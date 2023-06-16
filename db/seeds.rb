# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "open-uri"
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  student_1 = User.new(
    role: false,
    first_name: "Cristóbal",
    last_name: "Selame",
    age: 20,
    phone: 62581475,
    address: "Calle Begonias, 321",
    city: "Santiago",
    state: "Santiago",
    country: "Chile",
    studies: "Leyes",
    college: "Gabriela Mistral",
    experience: "",
    languages: "Español, Inglés",
    knowledges: "Leyes comunitarias. Derecho penal",
    email: "selame@pathfinder.com",
    password: "123456"
  )
  photo_1 = URI.open("https://img.freepik.com/free-photo/portrait-successful-handsome-executive-businessman-smart-casual-wear-looking-camera-smiling_7861-3115.jpg")
  student_1.photo.attach(io: photo_1, filename: "user_1.png", content_type: "image/png")
  student_1.save!

  student_2 = User.new(
    role: false,
    first_name: "Juan Manuel",
    last_name: "Binda",
    age: 19,
    phone: 04523153,
    address: "Avenida Cesar, calle Este 84",
    city: "Buenos Aires",
    state: "Buenos Aires",
    country: "Argentina",
    studies: "Marketing",
    college: "Universidad de la Plata",
    experience: "Marketing Digital",
    languages: "Español, Inglés, Francés",
    knowledges: "Marketing Digital",
    email: "binda@pathfinder.com",
    password: "123456"
  )
  photo_2 = URI.open("https://img.freepik.com/free-photo/young-happy-entrepreneur-writing-whiteboard-while-working-office_637285-10561.jpg")
  student_2.photo.attach(io: photo_2, filename: "user_2.png", content_type: "image/png")
  student_2.save!

  student_3 = User.new(
    role: false,
    first_name: "Hugo",
    last_name: "Acosta",
    age: 20,
    phone: 65842519,
    address: "Calle Genesis, 12",
    city: "Santa Cruz de la Sierra",
    state: "Santa Cruz",
    country: "Bolivia",
    studies: "Ingeniería Informática",
    college: "UAGRM",
    experience: "Desarrollo de software de gestión. Proyecto de grado",
    languages: "Español, Inglés",
    knowledges: "PHP, HTML y CSS",
    email: "acosta@pathfinder.com",
    password: "123456"
  )
  photo_3 = URI.open("https://img.freepik.com/free-photo/man-smiling-with-notebook-thumb-up_1187-3448.jpg")
  student_3.photo.attach(io: photo_3, filename: "user_3.png", content_type: "image/png")
  student_3.save!

  student_4 = User.new(
    role: false,
    first_name: "Sergio",
    last_name: "Andrade",
    age: 18,
    phone: 21748130,
    address: "Avenida Santos, Calle General Bold # 298",
    city: "Buenos Aires",
    state: "Buenos Aires",
    country: "Argentina",
    studies: "Ingeniería Industrial",
    college: "Universidad de Buenos Aires",
    experience: "Creación de muebles con impresora 3D",
    languages: "Español",
    knowledges: "Mécanica",
    email: "sergand@gmail.com",
    password: "123456"
  )
  photo_4 = URI.open("https://img.freepik.com/free-photo/positive-employee-sitting-desk-holding-notebook-high-quality-photo_114579-35666.jpg")
  student_4.photo.attach(io: photo_4, filename: "user_4.png", content_type: "image/png")
  student_4.save!

  student_5 = User.new(
    role: false,
    first_name: "Verónica",
    last_name: "Soria",
    age: 20,
    phone: 87541926,
    address: "Av. Costanera, Central Plaza 271",
    city: "Santiago de Chile",
    state: "Santiago",
    country: "Chile",
    studies: "Gastronomía",
    college: "UDLC",
    experience: "",
    languages: "Español, Francés",
    knowledges: "Platos típicos. Platos Internacionales",
    email: "verosor@gmail.com",
    password: "123456"
  )
  photo_5 = URI.open("https://img.freepik.com/free-photo/portrait-female-business-executive-holding-file_1170-1118.jpg")
  student_5.photo.attach(io: photo_5, filename: "user_5.png", content_type: "image/png")
  student_5.save!

  student_6 = User.new(
    role: false,
    first_name: "Florencia",
    last_name: "Estrada",
    age: 19,
    phone: 54713964,
    address: "Calle Intersección, 78",
    city: "Buenos Aires",
    state: "Buenos Aires",
    country: "Argentina",
    studies: "Leyes",
    college: "UEDP",
    experience: "",
    languages: "Español, Inglés",
    knowledges: "Derecho Laboral",
    email: "flor3214@gmail.com",
    password: "123456"
  )
  photo_6 = URI.open("https://img.freepik.com/free-photo/young-tender-curly-girl-holding-documents_176420-238.jpg")
  student_6.photo.attach(io: photo_6, filename: "user_6.png", content_type: "image/png")
  student_6.save!

  student_7 = User.new(
    role: false,
    first_name: "Cecilia",
    last_name: "Rosado",
    age: 18,
    phone: 58431649,
    address: "Avenida Mutual, calle Salomon",
    city: "Cochabamba",
    state: "Cochabamba",
    country: "Bolivia",
    studies: "Marketing",
    college: "UNIVALLE",
    experience: "",
    languages: "Español, Inglés",
    knowledges: "Posicionamiento de Marca",
    email: "ceci8712@gmail.com",
    password: "123456"
  )
  photo_7 = URI.open("https://img.freepik.com/free-photo/cheerful-young-employee-celebrating-professional-success_1262-16039.jpg")
  student_7.photo.attach(io: photo_7, filename: "user_7.png", content_type: "image/png")
  student_7.save!

  student_8 = User.new(
    role: false,
    first_name: "Andres",
    last_name: "Segundo",
    age: 20,
    phone: 54173968,
    address: "Calle Real, Nro. 742",
    city: "Rosario",
    state: "Santa Fe",
    country: "Argentina",
    studies: "Contaduría Pública",
    college: "URSF",
    experience: "",
    languages: "Español",
    knowledges: "Auditoría Interna",
    email: "andrreseg@gmail.com",
    password: "123456"
  )
  photo_8 = URI.open("https://img.freepik.com/free-photo/young-handsome-stylish-hipster-man-black-jacket-sitting-office-table-business-style-white-shirt-isolated-working-laptop-start-up-work-place-victory_285396-1486.jpg")
  student_8.photo.attach(io: photo_8, filename: "user_8.png", content_type: "image/png")
  student_8.save!

  student_9 = User.new(
    role: false,
    first_name: "Rosario",
    last_name: "Ayala",
    age: 21,
    phone: 30152849,
    address: "Calle Gral. Cruz # 15",
    city: "Concepción",
    state: "Concepción",
    country: "Chile",
    studies: "Arquitectura",
    college: "Universidad de Concepción",
    experience: "",
    languages: "Español",
    knowledges: "Diseño",
    email: "rosa12@gmail.com",
    password: "123456"
  )
  photo_9 = URI.open("https://img.freepik.com/free-photo/joyful-young-asian-woman-winning-celebrating-victory-achievement-receive-good-news-mobile-phon_1258-123836.jpg")
  student_9.photo.attach(io: photo_9, filename: "user_9.png", content_type: "image/png")
  student_9.save!

  student_10 = User.new(
    role: false,
    first_name: "Julio",
    last_name: "Soliz",
    age: 22,
    phone: 87490317,
    address: "Av. Padro # 162",
    city: "La Paz",
    state: "La Paz",
    country: "Bolivia",
    studies: "Administración de Empresas",
    college: "UMSS",
    experience: "",
    languages: "Español",
    knowledges: "Recursos Humanos",
    email: "solizj12@gmail.com",
    password: "123456"
  )
  photo_10 = URI.open("https://img.freepik.com/free-photo/young-person-during-intership_23-2149315589.jpg")
  student_10.photo.attach(io: photo_10, filename: "user_10.png", content_type: "image/png")
  student_10.save!

  student_11 = User.new(
    role: false,
    first_name: "German",
    last_name: "Rocha",
    age: 21,
    phone: 85914627,
    address: "Avenida República, Calle Victoria, # 54",
    city: "Osorno",
    state: "Los Lagos",
    country: "Chile",
    studies: "Ingeniería Comercial",
    college: "UNOS",
    experience: "",
    languages: "Español",
    knowledges: "Comercio Internacional",
    email: "germanr981@gmail.com",
    password: "123456"
  )
  photo_11 = URI.open("https://img.freepik.com/free-photo/smiling-man-pointing_1187-1057.jpg")
  student_11.photo.attach(io: photo_11, filename: "user_11.png", content_type: "image/png")
  student_11.save!

  student_12 = User.new(
    role: false,
    first_name: "Raquel",
    last_name: "Rocha",
    age: 22,
    phone: 48503018,
    address: "Avenida Rio Negro # 271",
    city: "Córdoba",
    state: "Córdoba",
    country: "Argentina",
    studies: "Administración de Empresas",
    college: "UNACO",
    experience: "",
    languages: "Español, Inglés",
    knowledges: "Administración Financiera",
    email: "raquelroch@gmail.com",
    password: "123456"
  )
  photo_12 = URI.open("https://img.freepik.com/free-photo/cheerful-pretty-woman-pumping-fist-celebrating-achievement_1262-16140.jpg")
  student_12.photo.attach(io: photo_12, filename: "user_12.png", content_type: "image/png")
  student_12.save!

  student_13 = User.new(
    role: false,
    first_name: "Julio",
    last_name: "Roman",
    age: 21,
    phone: 54130470,
    address: "Calle Bartenes # 192",
    city: "Montevideo",
    state: "Montevideo",
    country: "Uruguay",
    studies: "Ingeniería de Sistemas",
    college: "FAUR",
    experience: "",
    languages: "Español",
    knowledges: "Desarrollo con Python",
    email: "julicor12@gmail.com",
    password: "123456"
  )
  photo_13 = URI.open("https://img.freepik.com/free-photo/man-working-with-laptop-holding-coffee-cup_1150-52068.jpg")
  student_13.photo.attach(io: photo_13, filename: "user_13.png", content_type: "image/png")
  student_13.save!

  student_14 = User.new(
    role: false,
    first_name: "Cristina",
    last_name: "Aponte",
    age: 19,
    phone: 26010045,
    address: "Calle Pastaza # 53",
    city: "Arequipa",
    state: "Arequipa",
    country: "Perú",
    studies: "Ingeniería Petrolera",
    college: "UNADA",
    experience: "",
    languages: "Español",
    knowledges: "Refinamiento",
    email: "crisap721@gmail.com",
    password: "123456"
  )
  photo_14 = URI.open("https://img.freepik.com/free-photo/happy-young-business-woman-secretary-holding-laptop-modern-office_1258-104572.jpg")
  student_14.photo.attach(io: photo_14, filename: "user_14.png", content_type: "image/png")
  student_14.save!

  student_15 = User.new(
    role: false,
    first_name: "Sofia",
    last_name: "Mercado",
    age: 22,
    phone: 50180345,
    address: "Av. San Martín, calle Ruet 213",
    city: "Lima",
    state: "Lima",
    country: "Perú",
    studies: "Comercio Internacional",
    college: "UANLI",
    experience: "",
    languages: "Español, Inglés",
    knowledges: "Relaciones Internacionales",
    email: "sofim78@gmail.com",
    password: "123456"
  )
  photo_15 = URI.open("https://img.freepik.com/free-photo/business-woman-smiling-looking-camera_23-2148218497.jpg")
  student_15.photo.attach(io: photo_15, filename: "user_15.png", content_type: "image/png")
  student_15.save!

  student_16 = User.new(
    role: false,
    first_name: "Marcelo",
    last_name: "Rincón",
    age: 18,
    phone: 66944204,
    address: "Calle Jerusalen # 78",
    city: "Asunción",
    state: "Asunción",
    country: "Paraguay",
    studies: "Ingeniería Civil",
    college: "UNAS",
    experience: "",
    languages: "Español, Inglés",
    knowledges: "Fluidos y flujos",
    email: "marcerin@gmail.com",
    password: "123456"
  )
  photo_16 = URI.open("https://img.freepik.com/free-photo/man-with-beard-showing-thumb-up_1187-5821.jpg")
  student_16.photo.attach(io: photo_16, filename: "user_16.png", content_type: "image/png")
  student_16.save!

  student_17 = User.new(
    role: false,
    first_name: "Marcos",
    last_name: "Nuva",
    age: 22,
    phone: 22554871,
    address: "Avenida Merin, calle Norte, # 15",
    city: "Tarija",
    state: "Tarija",
    country: "Bolivia",
    studies: "Trabajo Social",
    college: "UNJMS",
    experience: "",
    languages: "Español, Inglés",
    knowledges: "Apoyo Sectorial",
    email: "nuvamarc@gmail.com",
    password: "123456"
  )
  photo_17 = URI.open("https://img.freepik.com/free-photo/scenery-designers-work_23-2149741846.jpg")
  student_17.photo.attach(io: photo_17, filename: "user_17.png", content_type: "image/png")
  student_17.save!

  student_18 = User.new(
    role: false,
    first_name: "Ruben",
    last_name: "Tejerina",
    age: 21,
    phone: 26003314,
    address: "Calle Recoleta, Nro. 81",
    city: "Asunción",
    state: "Asunción",
    country: "Paraguay",
    studies: "Economía",
    college: "UNAS",
    experience: "",
    languages: "Español",
    knowledges: "Auditoría Impositiva",
    email: "tejrub87@gmail.com",
    password: "123456"
  )
  photo_18 = URI.open("https://img.freepik.com/free-photo/smiling-man-with-charts-looking-camera_23-2147707729.jpg")
  student_18.photo.attach(io: photo_18, filename: "user_18.png", content_type: "image/png")
  student_18.save!

  student_19 = User.new(
    role: false,
    first_name: "Alba",
    last_name: "Barrientos",
    age: 23,
    phone: 30201145,
    address: "Calle Manza. Oeste # 8123",
    city: "Guayaquil",
    state: "Guayaquil",
    country: "Ecuador",
    studies: "Ingeniería de Alimentos",
    college: "Universidad de Guayaquil",
    experience: "",
    languages: "Español, Inglés",
    knowledges: "Procesamiento Alimentario",
    email: "barralb3@gmail.com",
    password: "123456"
  )
  photo_19 = URI.open("https://img.freepik.com/free-photo/brunette-businesswoman-posing_23-2148142722.jpg")
  student_19.photo.attach(io: photo_19, filename: "user_19.png", content_type: "image/png")
  student_19.save!

  student_20 = User.new(
    role: false,
    first_name: "Willy",
    last_name: "Suarez",
    age: 21,
    phone: 65487244,
    address: "Av. Rubio, calle San Bernardo # 84",
    city: "Quito",
    state: "Quito",
    country: "Ecuador",
    studies: "Administración de Empresas",
    college: "UNAQ",
    experience: "",
    languages: "Español",
    knowledges: "Recursos Humanos, Desarrollo Humano",
    email: "willys83@gmail.com",
    password: "123456"
  )
  photo_20 = URI.open("https://img.freepik.com/free-photo/young-businessman-happy-expression_1194-1609.jpg")
  student_20.photo.attach(io: photo_20, filename: "user_20.png", content_type: "image/png")
  student_20.save!


puts "Students creados"

puts "Creando Companies"

company_21 = User.new(
    role: true,
    phone: 12512345678,
    address: "Calle Principal 142",
    city: "Ciudad de México",
    state: "Ciudad de México",
    country: "México",
    name: "TechNode",
    website: "https://www.technode.com",
    industry: "Tecnología",
    about: "TechNode es una empresa de tecnología líder en el desarrollo de soluciones innovadoras.",
    email: "cris@pathfinder.com",
    password: "123456"
  )
  photo_21 = URI.open("https://bloggytalky.com/wp-content/uploads/2017/07/create-a-free-logo-design-logo-designs-design-a-free-logo-design-a-free-logo-alltech-just-free-logo-design.png")
  company_21.photo.attach(io: photo_21, filename: "user_21.png", content_type: "image/png")
  company_21.save!

  company_22 = User.new(
    role: true,
    phone: 2298765432,
    address: "Avenida General Oviedo 456",
    city: "Santiago",
    state: "Región Metropolitana",
    country: "Chile",
    name: "IndusTreck",
    website: "https://www.industreck.cl",
    industry: "Manufactura",
    about: "Industreck es una destacada empresa de fabricación que produce bienes de consumo de alta calidad.",
    email: "juanma@pathfinder.com",
    password: "123456"
  )
  photo_22 = URI.open("http://lofrev.net/wp-content/photos/2016/07/abstract_logo_vector-1007x919.png")
  company_22.photo.attach(io: photo_22, filename: "user_22.png", content_type: "image/png")
  company_22.save!

  company_23 = User.new(
    role: true,
    phone: 35156755482,
    address: "Rua Paulo 789",
    city: "São Paulo",
    state: "São Paulo",
    country: "Brasil",
    name: "Servi Create",
    website: "https://www.servicreate.com.br",
    industry: "Servicios",
    about: "Servi Create es una empresa de servicios dedicada a brindar soluciones integrales para sus clientes.",
    email: "hugo@pathfinder.com",
    password: "123456"
  )
  photo_23 = URI.open("https://cdn.dribbble.com/users/160383/screenshots/5656135/scott_4x.png")
  company_23.photo.attach(io: photo_23, filename: "user_23.png", content_type: "image/png")
  company_23.save!

  company_24 = User.new(
    role: true,
    phone: 441197314722,
    address: "Calle Cuadradi 789",
    city: "Buenos Aires",
    state: "Buenos Aires",
    country: "Argentina",
    name: "Consult Range",
    website: "https://www.consultrange.com.ar",
    industry: "Consultoría",
    about: "Consul Range es una empresa de consultoría especializada en estrategias de negocios y desarrollo organizacional.",
    email: "lewagon1@pathfinder.com",
    password: "123456"
  )
  photo_24 = URI.open("https://static.vecteezy.com/system/resources/previews/000/606/820/original/c-circle-logo-template-design-vector.jpg")
  company_24.photo.attach(io: photo_24, filename: "user_24.png", content_type: "image/png")
  company_24.save!

  company_25 = User.new(
    role: true,
    phone: 5715215894,
    address: "Carrera Costaner 43",
    city: "Bogotá",
    state: "Cundinamarca",
    country: "Colombia",
    name: "EcoModa",
    website: "https://www.ecomoda.co",
    industry: "Moda",
    about: "EcoModa es una empresa líder en el sector de la moda, ofreciendo prendas de vestir de alta calidad y diseño vanguardista.",
    email: "lewagon2@pathfinder.com",
    password: "123456"
  )
  photo_25 = URI.open("https://static.vecteezy.com/system/resources/previews/000/587/678/non_2x/vector-initial-e-letter-logo-with-swoosh-colored-red-and-black.jpg")
  company_25.photo.attach(io: photo_25, filename: "user_25.png", content_type: "image/png")
  company_25.save!

  company_26 = User.new(
    role: true,
    phone: 6036295283,
    address: "Avenida Diametral 14",
    city: "San Salvador",
    state: "San Salvador",
    country: "El Salvador",
    name: "AliTron",
    website: "https://www.alitron.com.sv",
    industry: "Alimentación",
    about: "Alitron es una empresa dedicada a la producción y distribución de alimentos frescos y saludables para el mercado local e internacional.",
    email: "lewagon3@pathfinder.com",
    password: "123456"
  )
  photo_26 = URI.open("https://static.vecteezy.com/system/resources/previews/000/606/650/non_2x/vector-letter-a-logo-business-corporation-logo-design-concept-templat.jpg")
  company_26.photo.attach(io: photo_26, filename: "user_26.png", content_type: "image/png")
  company_26.save!

  company_27 = User.new(
    role: true,
    phone: 70105428472,
    address: "Calle Soleto 789",
    city: "San José",
    state: "San José",
    country: "Costa Rica",
    name: "EcoTuris",
    website: "https://www.ecoturis.co.cr",
    industry: "Turismo",
    about: "EcoTuris es una agencia de viajes que ofrece experiencias turísticas inolvidables en los destinos más hermosos de Costa Rica.",
    email: "lewagon4@pathfinder.com",
    password: "123456"
  )
  photo_27 = URI.open("https://static.vecteezy.com/system/resources/previews/002/836/967/large_2x/et-logo-letter-initial-logo-designs-template-with-gold-and-black-background-vector.jpg")
  company_27.photo.attach(io: photo_27, filename: "user_27.png", content_type: "image/png")
  company_27.save!

  company_28 = User.new(
    role: true,
    phone: 8911023457,
    address: "Avenida Bartolome 84",
    city: "Santa Cruz",
    state: "Santa Cruz",
    country: "Bolivia",
    name: "EnergySun",
    website: "https://www.energysun.bo",
    industry: "Energía",
    about: "EnergySun es una empresa especializada en el desarrollo y suministro de soluciones energéticas sostenibles para el sector industrial.",
    email: "lewagon5@pathfinder.com",
    password: "123456"
  )
  photo_28 = URI.open("https://www.intuswindows.com/wp-content/uploads/2016/04/Logo-energy-conservation-Round_v3.png")
  company_28.photo.attach(io: photo_28, filename: "user_28.png", content_type: "image/png")
  company_28.save!


puts "Companies creadas"

puts "Creando Internships"
internships = [
  {
    category: "it",
    title: "Desarrollador FrontEnd",
    description: "Pasantía para desarrollar el frontend de aplicaciones web. Conocimientos en HTML, CSS y Javascript",
    tipo: "remoto",
    status: true,
    duration: 6,
    paid: true,
    start_date: "2023/06/08",
    end_date: "2023/07/08",
    city: "Ciudad de México",
    country:"Mexico",
    user_id: 21
  },
  {
    category: "manufacture",
    title: "Comercio Internacional",
    description: "Llevar adelante las relaciones de comercio con empresas proveedoras y distribuidoras de la marca",
    tipo: "remoto",
    status: true,
    duration: 10,
    paid: true,
    start_date: "2023/06/20",
    end_date: "2023/07/30",
    city: "Santiago",
    country:"Chile",
    user_id: 22
  },
  {
    category: "accounting",
    title: "Administrador Contable",
    description: "Organizar y controlar la contabilidad de la empresa",
    tipo: "remoto",
    status: true,
    duration: 6,
    paid: true,
    start_date: "2023/06/21",
    end_date: "2023/08/10",
    city: "São Paulo",
    country:"Brasil",
    user_id: 23
  },
  {
    category: "accounting",
    title: "Consultor Financiero",
    description: "Analizar y fiscalizar las finanzas",
    tipo: "presencial",
    status: true,
    duration: 9,
    paid: true,
    start_date: "2023/06/01",
    end_date: "2023/06/30",
    city: "Buenos Aires",
    country:"Argentina",
    user_id: 24
  },
  {
    category: "sales",
    title: "Marketing Digital",
    description: "Llevar adelante el marketing digital de los nuevos productos",
    tipo: "remoto",
    status: true,
    duration: 10,
    paid: true,
    start_date: "2023/06/10",
    end_date: "2023/07/20",
    city: "Bogotá",
    country:"Colombia",
    user_id: 25
  },
  {
    category: "product",
    title: "Control de Calidad",
    description: "Programar y organizar el proceso de control de calidad",
    tipo: "presencial",
    status: true,
    duration: 10,
    paid: true,
    start_date: "2023/06/15",
    end_date: "2023/07/01",
    city: "San Salvador",
    country:"El Salvador",
    user_id: 26
  },
  {
    category: "turism",
    title: "Desarrollador Web",
    description: "Desarrollar nuestro sitio web como aplicación",
    tipo: "remoto",
    status: true,
    duration: 8,
    paid: true,
    start_date: "2023/06/01",
    end_date: "2023/07/30",
    city: "San José",
    country:"Costa Rica",
    user_id: 27
  },
  {
    category: "legal",
    title: "Derecho Laboral",
    description: "Elaborar guía para elaboración del cumpliento de los derecho laborales",
    tipo: "remoto",
    status: true,
    duration: 6,
    paid: true,
    start_date: "2023/06/01",
    end_date: "2023/06/30",
    city: "Santa Cruz",
    country:"Bolivia",
    user_id: 28
  }
]

internships.each do |i|
  Internship.create(i)
end

puts "Internships creadas"
