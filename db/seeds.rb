# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create!(email: 'admin@example.com', password: 'qwerty')

[
  { id: 1, title: 'Руководящая должность' },
  { id: 2, title: 'Врач специалист' },
  { id: 3, title: 'Ординатор/интерн' },
  { id: 4, title: 'Средний медицинский персонал' },
  { id: 5, title: 'Студент медицинского вуза' },
].each do |params|
  ProfessionStatus.create!(params)
end

[
  { id: 1, title: 'акушер-гинеколог' },
  { id: 2, title: 'акушер-гинеколог цехового врачебного участка' },
  { id: 3, title: 'аллерголог-иммунолог' },
  { id: 4, title: 'анестезиолог-реаниматолог' },
  { id: 5, title: 'бактериолог' },
  { id: 6, title: 'вирусолог' },
  { id: 7, title: 'гастроэнтеролог' },
  { id: 8, title: 'гематолог' },
  { id: 9, title: 'генетик' },
  { id: 10, title: 'гериатр' },
  { id: 11, title: 'дезинфектолог' },
  { id: 12, title: 'дерматовенеролог' },
  { id: 13, title: 'детский кардиолог' },
  { id: 14, title: 'детский онколог' },
  { id: 15, title: 'детский уролог-андролог' },
  { id: 16, title: 'детский хирург' },
  { id: 17, title: 'детский эндокринолог' },
  { id: 18, title: 'диабетолог' },
  { id: 19, title: 'диетолог' },
  { id: 20, title: 'врач здравпункта' },
  { id: 21, title: 'инфекционист' },
  { id: 22, title: 'кардиолог' },
  { id: 23, title: 'врач клинической лабораторной диагностики' },
  { id: 24, title: 'клинический миколог' },
  { id: 25, title: 'клинический фармаколог' },
  { id: 26, title: 'колопроктолог' },
  { id: 27, title: 'косметолог' },
  { id: 28, title: 'врач-лаборант' },
  { id: 29, title: 'лабораторный генетик' },
  { id: 30, title: 'лабораторный миколог' },
  { id: 31, title: 'врач мануальной терапии' },
  { id: 32, title: 'врач-методист' },
  { id: 33, title: 'невролог' },
  { id: 34, title: 'нейрохирург' },
  { id: 35, title: 'неонатолог' },
  { id: 36, title: 'нефролог' },
  { id: 37, title: 'врач общей практики (семейный врач)' },
  { id: 38, title: 'онколог' },
  { id: 39, title: 'ортодонт' },
  { id: 40, title: 'остеопат' },
  { id: 41, title: 'оториноларинголог' },
  { id: 42, title: 'офтальмолог' },
  { id: 43, title: 'офтальмолог-протезист' },
  { id: 44, title: 'паразитолог' },
  { id: 45, title: 'патологоанатом' },
  { id: 46, title: 'педиатр' },
  { id: 47, title: 'педиатр городской (районный)' },
  { id: 48, title: 'педиатр участковый' },
  { id: 49, title: 'пластический хирург' },
  { id: 50, title: 'врач по авиационной и космической медицине' },
].each do |params|
  Specialization.create!(params)
end

[
  { id: 1, title: 'Россия' },
  { id: 2, title: 'Украина' },
].each do |params|
  Country.create!(params)
end

[
  { id: 1, country_id: 1, title: 'Москва', region: 'Москва' },
  { id: 2, country_id: 1, title: 'Санкт-Петербург', region: 'Санкт-Петербург' },
  { id: 3, country_id: 1, title: 'Отрадное', region: 'Ленинградская область' },
  { id: 4, country_id: 1, title: 'Череповец', region: 'Вологодская область' },
  { id: 5, country_id: 1, title: 'Волгоград', region: 'Волгоградская область' },
  { id: 6, country_id: 1, title: 'Северодвинск', region: 'Архангельская область' },
  { id: 7, country_id: 1, title: 'Пушкин', region: 'Санкт-Петербург' },
  { id: 8, country_id: 1, title: 'Борок', region: 'Ярославская область' },
  { id: 9, country_id: 1, title: 'Абакан', region: 'Республика Хакасия' },
  { id: 10, country_id: 1, title: 'Альметьевск', region: 'Республика Татарстан' },
  { id: 314, country_id: 2, title: 'Киев', region: 'Киев' },
  { id: 280, country_id: 2, title: 'Харьков', region: 'Харьковская область' },
  { id: 292, country_id: 2, title: 'Одесса', region: 'Одесская область' },
].each do |params|
  City.create!(params)
end

Target.create!(city_id: 1, profession_status_id: 1, specialization_ids: [1, 2])
Target.create!(city_id: 2, profession_status_id: 2, specialization_ids: [50])
Target.create!(city_id: 4, profession_status_id: 4, specialization_ids: [3])
Target.create!(city_id: 5, profession_status_id: 5, specialization_ids: [4, 43])
Target.create!(city_id: 2, profession_status_id: 1, specialization_ids: [37])
Target.create!(city_id: 1, profession_status_id: 1, specialization_ids: [5])

[
  { title: 'НПВС повышают риск развития сердечно-сосудистых заболеваний у пациентов с остеоартритом', text: 'Текст новости "НПВС повышают риск развития сердечно-сосудистых заболеваний у пациентов с остеоартритом"', targets: Target.find([1, 2]) },
  { title: 'Пульмонологи обеспокоены недостаточным выявлением бронхиальной астмы', text: 'Текст новости "Пульмонологи обеспокоены недостаточным выявлением бронхиальной астмы"', targets: Target.find([3]) },
  { title: 'Биологи нашли микробы, нарушающие правила чтения ДНК', text: 'Текст новости "Биологи нашли микробы, нарушающие правила чтения ДНК"', targets: Target.find([4, 1]) },
  { title: 'ВОЗ опубликовала XI издание Международной классификации болезней', text: 'Текст новости "ВОЗ опубликовала XI издание Международной классификации болезней"', targets: Target.find([5, 3, 2]) },
  { title: 'Чемпионат мира затруднит работу российских ученых', text: 'Текст новости "Чемпионат мира затруднит работу российских ученых"', targets: Target.find([1, 3]) },
  { title: 'Детская травма заставила мозг быстрее развиваться', text: 'Текст новости "Детская травма заставила мозг быстрее развиваться"' },
  { title: 'Штрафы съедают до 40% средств медучреждений', text: 'Текст новости "Штрафы съедают до 40% средств медучреждений"', targets: Target.find([5]) },
  { title: 'Ученые обнаружили генетическую программу, контролирующую инвазивность глиобластомы', text: 'Текст новости "Ученые обнаружили генетическую программу, контролирующую инвазивность глиобластомы"', targets: Target.find([4, 3]) },
  { title: 'Британские ученые превратили самца мыши в самку', text: 'Текст новости "Британские ученые превратили самца мыши в самку"', targets: Target.find([1]) },
  { title: 'Российские ученые научились по запаху определять склонность к наркомании', text: 'Текст новости "Российские ученые научились по запаху определять склонность к наркомании"', targets: Target.find([2]) },
].each do |params|
  News.create!(params)
end

Doctor.create!(email: 'doctor@example.com', password: 'qwerty', city_id: 1, profession_status_id: 1, specialization_ids: [1, 2])
Doctor.create!(email: 'doctor1@example.com', password: 'qwerty', city_id: 2, profession_status_id: 2, specialization_ids: [43, 50, 42, 12, 33])
Doctor.create!(email: 'doctor2@example.com', password: 'qwerty', city_id: 4, profession_status_id: 4, specialization_ids: [3,4,5])
Doctor.create!(email: 'doctor3@example.com', password: 'qwerty', city_id: 5, profession_status_id: 5, specialization_ids: [4, 43, 32])
