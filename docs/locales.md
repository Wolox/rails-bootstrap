# Locales
The purpose of this document is to guide you on the correct usage of the locales structure of this project.

## Table of contents

- [Locales](#locales)
  - [Structure](#structure)
    - [Gems](#gems)
      - [Folder structure](#folder-structure)
      - [File structure](#file-structure)
    - [Models](#models)
      - [Folder structure](#folder-structure-1)
      - [File structure](#file-structure-1)
    - [Views](#views)
      - [Folder structure](#folder-structure-2)
      - [File structure](#file-structure-2)
    - [Example's folder structure](#examples-folder-structure)
  - [Useful links](#useful-links)


## Structure
`locales` folder contains three main folders:

  - `gems` - containing all locales related to gems texts

  - `models` - containing all locales related to models (such as attributes, model's name, model's error messages and so on)

  - `views` - containing all locales associated with each controller's related views

Each of the above folders contains other subfolders, each of them representing one particular aspect of the topic described by the parent folder.

If we go deep into this structure, at the deepest level we will find one file per language locale. The default languages provided in this repository are `en` and `es`. Of course, each locale file must have the same structure, but with different locale texts.

It is important to note that you can add as many folders as you wish.

Having said this, let's deep into each of these main folders

### Gems
`gems` folder contains all locales related to gems texts. Let's take the bootstrap gem as an example.

#### Folder structure
If we want to use bootstrap texts locales for `en` and `es` languages, we should place two files in the following hierarchy

```
locales
  |-  gems
      |-  bootstrap
          |-  en.yml
          |-  es.yml
```

#### File structure
Each locale file (in this case, `en.yml` and `es.yml`) should have the structure detailed by the gem's documentation that's being translated.

Following with our example, let's check out the bootstrap locale files' structure.

```yml
# en.yml
en:
  helpers:
    actions: "Actions"
    links:
      back: "Back"
      cancel: "Cancel"
      confirm: "Are you sure?"
      destroy: "Delete"
      new: "New"
      edit: "Edit"
    titles:
      edit: "Edit %{model}"
      save: "Save %{model}"
      new: "New %{model}"
      delete: "Delete %{model}"

```

```yml
# es.yml
es:
  helpers:
    actions: "Acciones"
    links:
      back: "Atrás"
      cancel: "Cancelar"
      confirm: "¿Está seguro?"
      destroy: "Eliminar"
      new: "Nuevo"
      edit: "Editar"
    titles:
      edit: "Editar %{model}"
      save: "Guardar %{model}"
      new: "Nuevo %{model}"
      delete: "Borrar %{model}"
```

### Models
`models` folder contains all locales related to models. This includes attributes, model's name, model's error messages, placeholders and whatever locale you consider it is purely related to a model, independently on where it will be shown.

Let's take the User (Active Record) model as an example.

#### Folder structure
It's pretty much the same as the `gems` folder structure

```
locales
  |-  models
      |-  user
          |-  en.yml
          |-  es.yml
```

#### File structure
Each locale file (in this case, `en.yml` and `es.yml`) should have the structure detailed by the [Rails ActiveRecord models translations](http://guides.rubyonrails.org/i18n.html#translations-for-active-record-models).

For our User model, each locale file could be

```yml
# en.yml
en:
  activerecord:
    attributes:
      user:
        current_password: Current password
        email: Email
        password: Password
        password_confirmation: Password confirmation
        created_at: Created at
        updated_at: Updated at
        remember_me: Remember me
        reset_password_token: Reset password token
        unlock_token: Unlock token
    models:
      user:
        one: User
        other: Users
    errors:
      user:
        email: must have a valid format
    success:
      user:
        update_password: Password was successfully updated
    placeholders:
      user:
        email: "E.g.: someone@example.com"
        password: Password
        password_confirmation: Password confirmation
```

```yml
# es.yml
es:
  activerecord:
    attributes:
      user:
        current_password: Contraseña actual
        email: Email
        password: Contraseña
        password_confirmation: Confirmación de la contraseña
        created_at: Creado el
        updated_at: Modificado el
        remember_me: Recordarme
        reset_password_token: Restablecer token contraseña
        unlock_token: Desbloquear token
    models:
      user:
        one: Usuario
        other: Usuarios
    errors:
      user:
        email: debe tener un formato válido
    success:
      user:
        update_password: La contraseña se actualizó correctamente
    placeholders:
      user:
        email: "Ej.: alguien@example.com"
        password: Ingrese una contraseña
        password_confirmation: Ingrese nuevamente la contraseña
```

### Views
`views` folder contains all locales associated with each controller's related views.

This is the most interesting folder, the core of this locale structure.

Let's have an example of both folder and file structures. For this, let's consider the following two controllers

```ruby
# application_controller.rb
class ApplicationController < ActionController::Base
  # code omitted for simplicity...

  def index
    # code omitted for simplicity...
  end

  # code omitted for simplicity...
end
```

```ruby
# users_controller.rb
class UsersController < ApplicationController
  # code omitted for simplicity...

  def index
    # code omitted for simplicity...
  end

  def show
    # code omitted for simplicity...
  end

  def edit
    # code omitted for simplicity...
  end

  def custom_collection
    # code omitted for simplicity...
  end

  # code omitted for simplicity...
end
```

#### Folder structure
Inside `views` folder, there should be one folder per controller, and inside each of them, we should find our locale files (`en.yml` and `es.yml` following the previous examples).

With our example's controllers, the structure would be

```
locales
  |-  views
      |-  application
      |   |-  en.yml
      |   |-  es.yml
      |-  users
          |-  en.yml
          |-  es.yml
```

#### File structure
We should structure each locale file following the below convention

```yml
# locale file for `FoosController`
#
# language_extension examples: `es`, `en`, etc., as in the previous examples
language_extension:
  # path of this view: http://host:port/foos
  index:
    text_1: text_1_translation
    text_2: text_2_translation
    fragment_of_page:
      text_1: text_1_translation
      text_2: text_2_translation
    bunch_of_related_words_inside_view:
      text_1: text_1_translation
      text_2: text_2_translation
      nest_as_many_levels_as_you_wish:
        text_1: text_1_translation
        text_2: text_2_translation

  # path of this view: http://host:port/foos/view_1
  view_1:
    text_1: text_1_translation
    text_2: text_2_translation
    fragment_of_page:
      text_1: text_1_translation
      text_2: text_2_translation
    bunch_of_related_words_inside_view:
      text_1: text_1_translation
      text_2: text_2_translation
      nest_as_many_levels_as_you_wish:
        text_1: text_1_translation
        text_2: text_2_translation

  id:
    # path of this view: http://host:port/foos/:id
    show:
      text_1: text_1_translation
      text_2: text_2_translation
      fragment_of_page:
        text_1: text_1_translation
        text_2: text_2_translation
      bunch_of_related_words_inside_view:
        text_1: text_1_translation
        text_2: text_2_translation
        nest_as_many_levels_as_you_wish:
          text_1: text_1_translation
          text_2: text_2_translation
```

There is one special case: the `ApplicationController`. As the other controllers, it will have an associated locales folder, but its locale files should not only contain the views locales, but also all the application level messages translations.

**It is important not to abuse of application level messages** as they can end up ruining all this locales structure idea.

With this in mind, let's deep into the ApplicationController locale file of our example


```yml
# en.yml
en:
  application:
    index:
      messages:
        welcome: Welcome to RailsBootstrap
    messages:
      alerts:
        user_not_authorized: You are not authorized to carry out this action
        record_not_found: The required resource does not exist
```

```yml
# es.yml
es:
  application:
    index:
      messages:
        welcome: Bienvenido al Bootstrap de Rails
    messages:
      alerts:
        user_not_authorized: No está autorizado para realizar esta acción
        record_not_found: El recurso que está solicitando no existe
```

And for our UsersController
```yml
# en.yml
en:
  # http://host:port/users
  index:
    title: List of users
    actions:
      add: Add user
      show: Show details
      delete: Delete
    messages:
      warning:
        no_users: There are currently no users
      success:
        delete: User successfully deleted
      error:
        delete: User could not be deleted
  id:
    # http://host:port/users/:id
    show:
      title: User %{user}
      actions:
        delete: Delete
        back: Back
    # http://host:port/users/:id/edit
    edit:
      title: Edit user %{user}
      actions:
        update: Update
        cancel: Cancel
        restore: Restore
      messages:
        error:
          update: User %{user} could not be updated
        success:
          update: User %{user} successfully updated

  # http://host:port/users/custom_collection
  custom_collection:
    title: Title for my custom collection
    messages:
      see_more: See more at
```

```yml
# es.yml
es:
  # http://host:port/users
  index:
    title: Listado de usuarios
    actions:
      add: Agregar usuario
      show: Ver detalles
      delete: Eliminar
    messages:
      warning:
        no_users: Actualmente no hay ningún usuario
      success:
        delete: Usuario eliminado exitosamente
      error:
        delete: El usuario no pudo ser eliminado
  id:
    # http://host:port/users/:id
    show:
      title: Usuario %{user}
      actions:
        delete: Eliminar
        back: Atrás
    # http://host:port/users/:id/edit
    edit:
      title: Editar usuario %{user}
      actions:
        update: Actualizar
        cancel: Cancelar
        restore: Reestablecer
      messages:
        error:
          update: El usuario %{user} no pudo ser actualizado
        success:
          update: El usuario %{user} fue actualizado exitosamente

  # http://host:port/users/custom_collection
  custom_collection:
    title: Título para mi colección customizada
    messages:
      see_more: Ver más en
```

### Example's folder structure
Putting all the above folder structures together, `locales` folder should now look like this

```
locales
  |-  gems
  |   |-  bootstrap
  |       |-  en.yml
  |       |-  es.yml
  |
  |-  models
  |   |-  user
  |       |-  en.yml
  |       |-  es.yml
  |
  |-  views
      |-  application
      |   |-  en.yml
      |   |-  es.yml
      |-  users
          |-  en.yml
          |-  es.yml
```

## Useful links
- [Rails Internationalization API](http://guides.rubyonrails.org/i18n.html)
- [Customizing locales](https://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale)
