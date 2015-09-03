# Loads the application classes

class desktop::apps {
  include desktop::apps::atom_editor
  include desktop::apps::hipchat
  include desktop::apps::termite
}
