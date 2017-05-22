puts "Cleaning database..."

Hrservice.destroy_all
Meeting.destroy_all
User.destroy_all

puts "Creating users"
# lippi = User.create!(first_name: 'Lippi', last_name: 'Horse', email: 'anneso_chambon@hotmail.com', password:'azerty')
# joe = User.create!(first_name: 'Joe', last_name:'Le Taxi', email: 'heninapso@gmail.com', password: 'azerty')

puts "Creating Hrservices"
feedback_cv_lm = Hrservice.create!(title: "Feedback CV/lettre de motivation", description: "Le feedback que vous n’avez jamais eu sur votre CV et/ou votre lettre de motivation", conditions: ["- Analyse de votre CV par un RH","- Entretien de debriefing 30min (Skype ou face-à-face si vous êtes à Paris)","- Synthèse écrite"], price_cents: 2499, entry_service: true, hrsunit: true, hrsbundle: false, options: "Prix déduit du montant total si vous souhaitez continuer avec l’Update CV")
feedback_linkedin = Hrservice.create!(title: "Feedback LinkedIn", description: "Le diagnostic RH et communication de votre visibilité sur internet", conditions: ["- Analyse de votre e-réputation","- Entretien de debriefing 30min (Skype ou face-à-face si vous êtes à Paris)","- Synthèse écrite"], price_cents: 2499, entry_service: true, hrsunit: true, hrsbundle: false, options: "Prix sera déduit du montant total si vous souhaitez continuer avec l’Update LinkedIn")
update_cv = Hrservice.create!(title: "Update CV", description: "Redonnez un coup de jeune à votre CV", conditions: ["- Entretien initial de 45 min pour cibler votre besoin","- Analyse de votre CV par un RH","- Regard complémentaire d’un expert en communication","- Entretien de restitution 45min (Skype ou face-à-face si vous êtes à Paris)","- CV remanié"], price_cents: 9900, entry_service: false, hrsunit: true, hrsbundle: false, options: "CV en anglais : +49€ / CV bilingue (FR + EN): +99€")
update_linkedin = Hrservice.create!(title: "Update LinkedIn", description: "Votre profil LinkedIn aux petits oignons et votre stratégie digitale bien organisée", conditions: ["- Entretien initial de 45 min pour cibler votre besoin","Analyse de votre CV par un RH","- Analyse de votre présence internet par un expert communication digitale","- Entretien de restitution 45min (Skype ou face-à-face si vous êtes à Paris)","- Synthèse des recommandations et profil à jour"], price_cents: 14900, entry_service: false, hrsunit: true, hrsbundle: false, options: "Profil en anglais : +99€ / Profil bilingue (FR + EN): +149€ / Photo de profil : 49")
update_lm = Hrservice.create!(title: "Update lettre de motivation", description: "Une lettre de motivation sans bullshit, personnelle et efficace", conditions: ["- Entretien initial de 45 min pour comprendre votre parcours et cibler votre besoin","- Analyse de votre lettre de motivation actuelle","- Regard complémentaire d’un expert en communication","- Entretien de restitution 45min (Skype ou face-à-face si vous êtes à Paris)","- Lettre de motivation rédigée"], price_cents: 14900, entry_service: false, hrsunit: true, hrsbundle: false, options: "Lettre en anglais : +99€ / Lettre bilingue (FR + EN): +149€")
preparation_entretien = Hrservice.create!(title: "Préparation entretien", description: "La meilleure façon de réussir ses entretiens, c’est de pouvoir faire comme si vous y étiez… avant de vous retrouver face au recruteur", conditions: ["- Entretien d’1h30 comportant 45min d’entretien / 45 min de débriefing (Skype ou face-à-face si vous êtes à Paris)","- Recommandations renvoyées à l’issue de l’entretien"], price_cents: 9900, entry_service: false, hrsunit: true, hrsbundle: false, options: "Entretien en anglais +49€")
ask_donnie = Hrservice.create!(title: "Ask Donnie!", description: "Chez Donnie!, nous vous apportons un éclairage RH sur une questions précise que vous vous posez (mobilité, augmentation, préparation aux entretiens individuels (que vous soyez manager ou collaborateur), etc), et vous aide à prendre du recul par rapport à une situation", conditions: ["- Analyse et diagnostic RH de vos questions","- Débriefing oral (Skype) ou écrit, selon le besoin"], price_cents: 8000, entry_service: false, ondemand_service: true, hrsunit: true, hrsbundle: false, options: "Un devis sera établi pour vous donner une vision précise au lancement de la prestation")
bilan_donnie_egaree = Hrservice.create!(title: "Je me sens comme une brebis égarée", subtitle: "Mon job actuel ne me fait plus vibrer, je sais ce qui ne va pas mais je ne sais pas ce que je veux", description: "Nous vous aidons à faire un point sur votre situation actuelle pour vous permettre de prendre les bonnes décisions pour retrouver votre voie", conditions: ["- Entretien initial (1h) pour comprendre votre besoin","- Analyse de votre parcours et de votre profil pour identifier vos compétences, vos talents, vos zones de confort et d'inconfort","- Entretien de débriefing (1h) pour consolider ensemble et vous rebooster avant de préparer (peut-être ?) votre transhumance."], price_cents: 19900, entry_service: false, hrsunit: false, hrsbundle: true, options: "En anglais +99€")
tranhumance = Hrservice.create!(title: "Je prépare ma tranhumance", subtitle: "Ma décision est prise, je change de job (dans mon entreprise/dans une autre entreprise)… mais je ne sais pas comment m’y prendre pour être sûr(e) que ça marche", description: "Nous vous accompagnons dans toutes les étapes de votre candidature, du CV à l’entretien d’embauche… Votre personal trainer, mais pour votre carrière", conditions: ["- Entretien initial (1h) pour comprendre votre besoin","- Analyse de votre parcours et de votre profil au regard de votre objectif","- Analyse de votre e-réputation (expert communication digitale)","- Entretien de débriefing - 1h - et co-rédaction de votre CV/LinkedIn en fonction de vos remarques","- 2 simulations d'entretien, et il ne vous restera plus qu'à changer de bergerie !"], price_cents: 49900, entry_service: false, hrsunit: false, hrsbundle: true, options: "En anglais +99€ / Bilingue : +149€")
changer_bergerie = Hrservice.create!(title: "Je change de bergerie", subtitle: "J’ai trouvé le poste de mes rêves - ailleurs, d’ailleurs j’ai presque signé - mais je ne sais pas comment gérer au mieux mon départ, trouver la meilleure option de sortie et les conditions (notamment financières) les plus favorables… ", description: "Nous analysons avec vous votre situation actuelle pour trouver la meilleure option de sortie (rupture conventionnelle, démission, licenciement ? )", conditions: ["- Entretien initial - 45 min","- Analyse de votre situation vis-à-vis de votre employeur actuel","- Information et recommandations sur les différents modes de sortie","- Préparation à la négociation (combien demander ? comment faire ?)", "- Entretien 1h30 pour vous présenter les recommandations"], price_cents: 24900, entry_service: false, hrsunit: false, hrsbundle: true)
loup = Hrservice.create!(title: "Je crois qu'il y a un loup dans ma bergerie, j'ai besoin d'aide", subtitle: "Je ne me sens pas bien dans mon poste, mais je ne sais pas si c'est moi qui suis à côté de la plaque, ou si c'est effectivement que ce qui m'arrive n'est pas normal.", description: "Vous êtes dans une situation professionnelle qui vous fait souffir (burn-out, brown-out, bore-out, placardisation, situation de harcèlement, menaces, etc), et vous ne savez pas vers qui vous tourner ? Nous vous écoutons, vous donnons un avis RH sur votre situation, et vous aidons à trouver une solution. ", conditions: ["- Entretien initial (1h) pour comprendre ce qui ne va pas, vous donner les premiers conseils, identifier les différentes formes d'aides en fonction de votre situation", "-Si nécessaire, nous vous accompagnons sur d'autres entretiens plus spécifiques, sur la base de 80€/heure"], price_cents: 8000, entry_service: false, hrsunit: false, hrsbundle: true, options: "Un devis sera établi pour vous donner une vision précise au lancement de la prestation")


puts "Seed OK"
