(defun print-board (board)
  (format t "~%~{~{~a~}~%~}"
          (loop for row from 0 to 2
                collect (loop for col from 0 to 2
                              collect (aref board row col)))))

(defun check-win (board player)
  (or
   ;; Vérifie les lignes
   (some (lambda (row)
           (every (lambda (col)
                    (char= (aref board row col) player))
                  '(0 1 2)))
         '(0 1 2))
   ;; Vérifie les colonnes
   (some (lambda (col)
           (every (lambda (row)
                    (char= (aref board row col) player))
                  '(0 1 2)))
         '(0 1 2))
   ;; Vérifie les diagonales
   (and (char= (aref board 0 0) player)
        (char= (aref board 1 1) player)
        (char= (aref board 2 2) player))
   (and (char= (aref board 0 2) player)
        (char= (aref board 1 1) player)
        (char= (aref board 2 0) player)))
)


(defun play-game ()
  (let ((board (make-array '(3 3) :initial-element #\_)) ;; init l'array
        (current-player #\X)) ;; set le symbole pour le premier joueur
    (loop
     (print-board board)
     (format t "Joueur ~a, entrez la ligne (0-2): " current-player)
     (let ((row (read)))
       (format t "Joueur ~a, entrez la colonne (0-2): " current-player)
       (let ((col (read)))
         (if (and (<= 0 row 2) (<= 0 col 2) (char= (aref board row col) #\_)) ;; aref = acces mem
             (progn ;; eval plusieurs expressions
               (setf (aref board row col) current-player) ;; setf modif mem
               ;;modif la case pour etre egale et symbole
               (if (check-win board current-player)
                   (progn
                     (print-board board)
                     (format t "Joueur ~a gagne!~%" current-player)
                     (return) ;; quit la loop
                   )
                   (setf current-player (if (char= current-player #\X) #\O #\X)) ;; swap symbole
               )
             )
             (format t "Mouvement invalide. Réessayez.~%")
         )
       )
     )
    )
  )
)

(play-game)
(quit)
