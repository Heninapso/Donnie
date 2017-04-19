puts "Cleaning database..."

Hrservice.destroy_all
Meeting.destroy_all
User.destroy_all

puts "Creating Hrservices"

feedback_cv_lm = Hrservice.create!(title: "Feedback CV", description: "Le feedback que vous n’avez jamais eu sur votre CV et/ou votre lettre de motivation", conditions: ["Analyse de votre CV par un RH","Entretien de debriefing 45min (Skype ou face à face si vous êtes sur Paris)","Synthèse écrite"], price: 24.99, entry_service: true, hrsunit: true, hrsbundle: false)
# feedback_linkedin =
# update_cv
# update_linkedin
# update_lm
# preparation_entretien
# ask_donnie
# bilan_donnie_egaree
# tranhumance
# changer_bergerie
# loup
diagnosticLinkedIn = Hrservice.create!(title: "Diagnostic e-réputation", description: "Votre dernier entretien s'est terminé sur une mauvaise note quand le recruteur vous a fait comprendre qu'il avait trouvé les photos de vos dernières vacances à Mykonos - et pas en mode randonnée ? Tout le monde vous parle de LinkedIn, mais déjà que vous avez peiné à finir votre CV, vous ne vous sentez pas de vous remettre à l'ouvrage ? Détendez-vous, Donnie! s'occupe de tout.", conditions: "Précisez-nous le champ d'intervention, nos experts en communication digitale s'occupent du reste. Débriefing par Skype sous 3 jours avec synthèse écrite à l'issue", price: 29.90, entry_service: true)
cvupdate  = Hrservice.create!(title: "Pimp my CV", description: "Vous avez trouvé le job de vos rêves, mais vous n'avez pas refait votre CV depuis votre embauche il y a 10 ans ? Vous ne savez pas comment mettre en valeur les compétences que vous avez acquises dans vos jobs, mais aussi en tant que présidente de l'association 'Macramé et vertes pâtures' ? Pas de panique, nous sommes là pour vous aider à vous sentir ENFIN à l'aise avec votre CV", conditions: "Vous envoyez votre CV, en précisant votre situation et votre objectif. Notre expert RH vous proposera ensuite une rencontre pour clarifier vos attentes et vous proposer ses recommandations. A l'issue de cette rencontre, vous recevez votre CV remodelé, prêt à être envoyé ! ", price: 75.00, entry_service: false)
accompagnementmove  = Hrservice.create!(title: "I want to move (mais je ne sais pas comment faire)", description: "Cela fait quelques temps que vous vous dites que l'herbe est sans doute plus verte ailleurs, vous avez déjà identifié une piste/un job, mais vous n'arrivez pas à sauter le pas de l'envoi de candidature ? La perspective d'un entretien d'embauche vous fait cauchemarder pendant plusieurs nuits ? Venez vous préparer avec Donnie!", conditions: "Sur la base de votre analyse CV, une première rencontre est organisée avec un de nos experts RH pur clarifier votre situation et vos objectifs, afin d'ajuster au mieux votre CV à votre recherche. Et comme 'practice makes perfect', nous vous proposons 2 simulations d'entretien avec un expert RH et un expert communication, pour que vous puissiez en mettre plein les yeux aux recruteurs", price: 450.00, entry_service: false)
conseilrh  = Hrservice.create!(title: "Ask Donnie!", description: "La remarque de votre manager l'autre jour vous semble étrange ? Vous n'êtes pas convaincu par la réponse du RH qui vous a fait un retour négatif ? Vous voulez préparer votre entretien annuel, un entretien de mobilité interne ? Donnie! reste à votre écoute, pour toutes les questions que vous vous posez. ", conditions: "Posez votre question, Donnie! vous répond sous 48h ", price: 80.00, entry_service: false, ondemand_service: true)

puts "Seed OK"
