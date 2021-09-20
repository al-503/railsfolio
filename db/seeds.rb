# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

ProjectLangage.destroy_all
ProjectTool.destroy_all
ProjectSchema.destroy_all
ProjectMokeup.destroy_all

Project.destroy_all
Langage.destroy_all
Tool.destroy_all
Schema.destroy_all
Mokeup.destroy_all

# Project

col = Project.create!(name:"Col", description:"Progressive Web App pour aider les utilisateurs pour trouver une colocation.", web:"https://www.col.eu.com/")
file = File.open("db/fixtures/images_project/col.jpeg")
col.photo.attach(io: file, filename: "col.jpeg", content_type: 'image/png')
col.save!

retro_world = Project.create!(name:"Retro_World", description:"Maquette Web type Air BnB sur la location de console.", web:"https://app-6777a89c-5d50-47a4-86c2-31abf2b27210.cleverapps.io")
file = File.open("db/fixtures/images_project/retro_world.jpg")
retro_world.photo.attach(io: file, filename: "retro_world.jpg", content_type: 'image/png')
retro_world.save!

# Langages

rails = Langage.create(name: "Ruby on rails")
file = File.open("db/fixtures/images_langages/RubyRailsT.png")
rails.photo.attach(io: file, filename: "RubyRailsT.png", content_type: 'image/png')
rails.save!

postgr = Langage.create(name: "Postgsql")
file = File.open("db/fixtures/images_langages/POSTGSQL.png")
postgr.photo.attach(io: file, filename: "POSTGSQL.png", content_type: 'image/png')
postgr.save!

html = Langage.create(name: "HTML")
file = File.open("db/fixtures/images_langages/HTML.png")
html.photo.attach(io: file, filename: "HTML.png", content_type: 'image/png')
html.save!

css = Langage.create(name: "CSS")
file = File.open("db/fixtures/images_langages/CSS.png")
css.photo.attach(io: file, filename: "CSS.png", content_type: 'image/png')
css.save!

javascript = Langage.create(name: "Javascript")
file = File.open("db/fixtures/images_langages/JS.png")
javascript.photo.attach(io: file, filename: "JS.png", content_type: 'image/png')
javascript.save!

# Project Langages

col_langages_html = ProjectLangage.create!( project: col, langage: html)
col_langages_css = ProjectLangage.create!( project: col, langage: css)
col_langages_js = ProjectLangage.create!( project: col, langage: javascript)
col_langages_rails = ProjectLangage.create!( project: col, langage: rails)
col_langages_postgr = ProjectLangage.create!( project: col, langage: postgr)


retro_langages_html = ProjectLangage.create!( project: retro_world, langage: html)
retro_langages_css = ProjectLangage.create!( project: retro_world, langage: css)
retro_langages_js = ProjectLangage.create!( project: retro_world, langage: javascript)
retro_langages_rails = ProjectLangage.create!( project: retro_world, langage:rails)
retro_langages_postgr = ProjectLangage.create!( project: retro_world, langage: postgr)

# Tools

trello = Tool.create(name: "Trello")
file = File.open("db/fixtures/images_tools/Trello.png")
trello.photo.attach(io: file, filename: "Trello.png", content_type: 'image/png')
trello.save!

git = Tool.create(name: "Git")
file = File.open("db/fixtures/images_tools/git.png")
git.photo.attach(io: file, filename: "git.png", content_type: 'image/png')
git.save!

github = Tool.create(name: "GitHub")
file = File.open("db/fixtures/images_tools/GITHUB.png")
github.photo.attach(io: file, filename: "GITHUB.png", content_type: 'image/png')
github.save!

zoom = Tool.create(name: "Zoom")
file = File.open("db/fixtures/images_tools/Zoom2.png")
zoom.photo.attach(io: file, filename: "Zoom2.png", content_type: 'image/png')
zoom.save!

slack = Tool.create(name: "Slack")
file = File.open("db/fixtures/images_tools/Slackx500.png")
slack.photo.attach(io: file, filename: "Slackx500.png", content_type: 'image/png')
slack.save!

figma = Tool.create(name: "Figma")
file = File.open("db/fixtures/images_tools/Figma-logo.png")
figma.photo.attach(io: file, filename: "Figma-logo.png", content_type: 'image/png')
figma.save!

# project tools

col_tools_trello = ProjectTool.create(project: col ,tool: trello)
col_tools_git = ProjectTool.create(project: col ,tool: git)
col_tools_github = ProjectTool.create(project: col ,tool: github)
col_tools_zoom = ProjectTool.create(project: col ,tool: zoom)
col_tools_slack = ProjectTool.create(project: col ,tool: slack)
col_tools_figma = ProjectTool.create(project: col ,tool: figma)

retro_tools = ProjectTool.create(project: retro_world, tool:trello)
retro_tools_git = ProjectTool.create(project: retro_world ,tool: git)
retro_tools_github = ProjectTool.create(project: retro_world ,tool: github)
retro_tools_zoom = ProjectTool.create(project: retro_world ,tool: zoom)
retro_tools_slack = ProjectTool.create(project: retro_world ,tool: slack)
retro_tools_figma = ProjectTool.create(project: retro_world ,tool: figma)

# schemas

col_schema1 = Schema.create(title:"Schema Database" ,description:"Le schéma de database a était réalisé en trio sur ce projet,
                                                                  il s'agissait d'un projet pour la formation le Wagon.Le schéma se base sur une user storie elle aussi réaliser en trio. 
                                                                  Ce schéma nous a permis de gagner du temp sur la génération de la DB et de commencer avec un fil conducteur de DB clair pour gagner du temp sur le développement")
file = File.open("db/fixtures/images_schema/Schema_col-1280.png")
col_schema1.photo.attach(io: file, filename: "Schema_col-1280.png", content_type: 'image/png')
col_schema1.save!

retro_schema1 = Schema.create(title:"Schema Database" ,description:"Le schéma de Database a été réaliser en trio sur la base d'une user storie,
                                                                    il s'agissait de notre tout premier projet web complet 
                                                                    (Back end, Front end) pendant la formation du Wagon se basant sur une copie type AirB&B")
file = File.open("db/fixtures/images_schema/Schema_retro-1280.png")
retro_schema1.photo.attach(io: file, filename: "Schema_retro-1280.png", content_type: 'image/png')
retro_schema1.save!

# Project Shema

col_final_schema = ProjectSchema.create(project: col, schema: col_schema1)

retro_final_schema = ProjectSchema.create(project: retro_world, schema: retro_schema1)

# Mokeup

col_mokeup1 = Mokeup.create(title:"Design avant conception" ,description:" Pour Col. nous somme allé plus loin qu'un simple Mokeup noir et blanc ,
                                                                            nous devions savoir à quoi resemblerait le produit finale n'ayant que 10 jour pour le développer
                                                                            et ainsi gagner du temp sur le développement. 
                                                                            Nous avont essayer de nombreuses combinaisons notamment avec le gradient et le noir pour que les couleurs ressortent,
                                                                            mais aussi le choix des smileys pour faciliter l'accessibilité.")
file = File.open("db/fixtures/images_mokeup/Col-Figma.png")
col_mokeup1.photo.attach(io: file, filename: "Col-Figma.png", content_type: 'image/png')
col_mokeup1.save!

retro_mokeup1 = Mokeup.create(title:"Design avant conception" ,description:"Pour Rétro_World nous avons fait nos premiers pas sur Figma.
                                                                            Il s'agit d'un Mokeup personnel réaliser en noir et blanc avec l'aide user profil type.")
file = File.open("db/fixtures/images_mokeup/Retro_mokeup.png")
retro_mokeup1.photo.attach(io: file, filename: "Retro_mokeup.png", content_type: 'image/png')
retro_mokeup1.save!

# Project mokeup

col_design = ProjectMokeup.create(project: col, mokeup: col_mokeup1)

retro_design = ProjectMokeup.create(project: retro_world, mokeup: retro_mokeup1)