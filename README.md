Voici les attributs pour chaque objet mentionné dans la plateforme de bénévolat.

### 1. **Invité**

Un invité est une entité minimale, donc il n'a pas d'attributs persistants spécifiques à gérer. Les invités interagissent principalement en consultant des informations publiques.

### 2. **Bénévole**

Attributs pour un **Bénévole** :
- `id` : Identifiant unique du bénévole.
- `firstName` : Prénom du bénévole.
- `lastName` : Nom de famille du bénévole.
- `email` : Adresse email du bénévole.
- `phoneNumber` : Numéro de téléphone du bénévole.
- `password` : Mot de passe pour la connexion.
- `address` : Adresse du bénévole.
- `city` : Ville.
- `state` : État ou région.
- `country` : Pays.
- `postalCode` : Code postal.
- `skills` : Compétences du bénévole (liste ou texte).
- `availability` : Disponibilités du bénévole (jours, heures).
- `profilePicture` : URL de la photo de profil.
- `createdAt` : Date de création du profil.
- `updatedAt` : Dernière date de mise à jour du profil.
- `isActive` : Statut d'activation du compte.
- `confirmedEmail` : Statut de confirmation de l'email.
- `confirmedPhoneNumber` : Statut de confirmation du numéro de téléphone.
- `roles` : Liste des rôles associés au bénévole (ex. bénévole, administrateur).

### 3. **ONG (Organisation à but non lucratif)**

Attributs pour une **ONG** :
- `id` : Identifiant unique de l'ONG.
- `name` : Nom de l'ONG.
- `description` : Description de l'ONG.
- `email` : Adresse email officielle de l'ONG.
- `phoneNumber` : Numéro de téléphone de l'ONG.
- `address` : Adresse du siège de l'ONG.
- `city` : Ville.
- `state` : État ou région.
- `country` : Pays.
- `postalCode` : Code postal.
- `createdAt` : Date de création du profil de l'ONG.
- `updatedAt` : Dernière date de mise à jour du profil de l'ONG.
- `validated` : Statut de validation de l'ONG par les administrateurs.
- `adminIds` : Liste des identifiants des administrateurs de l'ONG.
- `volunteerIds` : Liste des identifiants des bénévoles associés à l'ONG.
- `eventIds` : Liste des identifiants des événements organisés par l'ONG.
- `goals` : Objectifs annuels de l'ONG (facultatif).

### 4. **Administrateur**

Attributs pour un **Administrateur** (souvent hérités de Bénévole) :
- `id` : Identifiant unique de l'administrateur (hérité du bénévole).
- `organizationId` : Identifiant de l'ONG associée.
- `firstName` : Prénom de l'administrateur.
- `lastName` : Nom de famille de l'administrateur.
- `email` : Adresse email.
- `phoneNumber` : Numéro de téléphone.
- `role` : Rôle spécifique dans l'ONG (ex. gestionnaire d'événements, responsable communication).
- `createdAt` : Date de création du profil.
- `updatedAt` : Dernière date de mise à jour du profil.

### 5. **Event (Événement)**

Attributs pour un **Événement** :
- `id` : Identifiant unique de l'événement.
- `title` : Titre de l'événement.
- `description` : Description de l'événement.
- `location` : Lieu de l'événement.
- `date` : Date et heure de l'événement.
- `duration` : Durée de l'événement.
- `createdAt` : Date de création de l'événement.
- `updatedAt` : Dernière date de mise à jour de l'événement.
- `maxParticipants` : Nombre maximum de participants.
- `organizationId` : Identifiant de l'ONG organisatrice.
- `adminIds` : Liste des identifiants des administrateurs responsables de l'événement.
- `volunteerIds` : Liste des identifiants des bénévoles inscrits à l'événement.
- `status` : Statut de l'événement (ex. en cours, terminé, annulé).

### 6. **Notification**

Attributs pour une **Notification** :
- `id` : Identifiant unique de la notification.
- `recipientId` : Identifiant du destinataire (bénévole ou administrateur).
- `type` : Type de notification (ex. email, SMS).
- `content` : Contenu de la notification.
- `sentAt` : Date et heure d'envoi de la notification.
- `status` : Statut de la notification (envoyée, échouée, en attente).
- `eventId` : Identifiant de l'événement associé (si applicable).

### 7. **Reporting**

Attributs pour un **Reporting** :
- `id` : Identifiant unique du rapport.
- `organizationId` : Identifiant de l'ONG associée.
- `eventId` (facultatif) : Identifiant de l'événement associé (si applicable).
- `title` : Titre du rapport.
- `content` : Contenu du rapport (texte ou fichier).
- `createdAt` : Date de création du rapport.
- `updatedAt` : Dernière date de mise à jour du rapport.
- `createdBy` : Identifiant de l'utilisateur ayant créé le rapport.
- `status` : Statut du rapport (en cours, finalisé, publié).

### 8. **Chat**

Attributs pour un **Chat** :
- `id` : Identifiant unique de la discussion.
- `title` : Titre ou sujet de la discussion.
- `participantsIds` : Liste des identifiants des participants (bénévoles, administrateurs).
- `createdAt` : Date de création de la discussion.
- `messages` : Liste des messages dans la discussion.
- `eventId` (facultatif) : Identifiant de l'événement associé (si applicable).

### 9. **Message (pour Chat)**

Attributs pour un **Message** dans un Chat :
- `id` : Identifiant unique du message.
- `chatId` : Identifiant de la discussion associée.
- `senderId` : Identifiant de l'expéditeur du message.
- `content` : Contenu du message.
- `timestamp` : Date et heure d'envoi du message.

Ces objets peuvent être enrichis selon les besoins spécifiques de l'application. Chacun d'eux est conçu pour être modulaire et extensible afin de couvrir un large éventail de fonctionnalités dans la plateforme de bénévolat.
