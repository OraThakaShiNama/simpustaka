-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 20, 2020 at 01:15 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `simpustaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Drew Donnelly'),
(2, 'Garrick Schumm'),
(3, 'Ayana Ward'),
(4, 'Dr. Maida McLaughlin PhD'),
(5, 'Miss Glenna Bergstrom'),
(6, 'Mr. Camryn Schumm Sr.'),
(7, 'Gavin Balistreri Sr.'),
(8, 'Sarina Smitham'),
(9, 'Dortha White'),
(10, 'Melisa Gutmann'),
(11, 'Caesar Littel'),
(12, 'Jaunita Friesen'),
(13, 'Odell Miller'),
(14, 'Dr. Boris Oberbrunner III'),
(15, 'Brendan O\'Connell'),
(16, 'Paul Blick'),
(17, 'Clare Schulist Sr.'),
(18, 'Prof. Edythe Purdy II'),
(19, 'Rowan Mayer'),
(20, 'Kennith Mante MD');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author_id`, `title`, `description`, `cover`, `qty`, `created_at`, `updated_at`) VALUES
(1, 5, 'Autem sequi totam voluptatem.', 'Non tempore rerum odit eius harum praesentium eligendi exercitationem repellat animi aperiam quo earum dolore incidunt doloremque ipsum est et odit explicabo cupiditate ipsam aut ullam minus aliquam sit facilis officiis dolore suscipit eius ipsa voluptatem vero eaque soluta minus qui inventore et.', 'https://picsum.photos/id/54/200/300', '10', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(2, 9, 'Dolor rerum voluptate voluptatem.', 'Et ea asperiores aliquam illo dolore ad laboriosam dolor quam porro dolor voluptatibus sit in rem temporibus quis sed eum mollitia consequuntur distinctio quisquam id aut quas consequatur minus recusandae maxime omnis asperiores repudiandae accusantium libero voluptatibus aut architecto voluptatem rerum excepturi eos fugit fuga hic quam voluptatem reiciendis molestias occaecati et est vel ut.', 'https://picsum.photos/id/11/200/300', '11', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(3, 20, 'Quos quidem inventore ut.', 'Praesentium eum est consectetur saepe culpa provident numquam at illum laudantium ipsa quo sed voluptas commodi autem est rerum quisquam deserunt blanditiis dolores laudantium modi officiis deleniti tempore quo voluptatum ex aspernatur eius vero sed ut inventore dolore qui quasi omnis hic provident in illo fuga laudantium veritatis laborum et eligendi quisquam sunt id dolorem ex sunt corrupti iusto.', 'https://picsum.photos/id/48/200/300', '16', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(4, 16, 'Nihil aut est deleniti nam.', 'Sed sit enim corrupti doloremque vero ea rerum et eveniet esse sint cupiditate quia sit autem qui occaecati explicabo et soluta et et aspernatur voluptates quasi rem ullam reprehenderit expedita quasi esse sed commodi qui eum voluptatibus occaecati placeat cum ipsam eligendi molestiae pariatur voluptate consequatur error iure magnam eum ipsam eligendi est.', 'https://picsum.photos/id/35/200/300', '15', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(5, 19, 'Ut amet veritatis.', 'Praesentium ut ratione reiciendis et aut reiciendis deleniti magnam iure et delectus cum eveniet repellendus nemo animi delectus nihil sed reiciendis nulla et dolorum atque consequatur incidunt et quam consequatur eos culpa in dignissimos dolores accusantium et quo accusamus laudantium vel voluptatum dignissimos molestias quaerat aperiam commodi qui vel rerum.', 'https://picsum.photos/id/74/200/300', '18', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(6, 15, 'Expedita quas amet inventore et ut.', 'Aut fuga placeat quibusdam repellendus maxime dicta qui id qui repellat non quod accusamus sunt ex ut ab ut beatae atque enim est dolore beatae dignissimos sit non tenetur nam tempora totam placeat est ad et voluptas est sit ut et est consequatur modi at quam explicabo pariatur laudantium iusto id iste et reprehenderit asperiores in similique quas suscipit qui odit quia nemo officiis voluptate iste maxime sed voluptate sunt labore.', 'https://picsum.photos/id/55/200/300', '15', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(7, 6, 'Repellendus sed consequatur sed.', 'Molestiae dolorem quo quia qui sed sint quibusdam molestias ut cum minima doloremque vel laboriosam rerum aut aut culpa quia repellendus officiis praesentium commodi iusto consequatur neque error aspernatur debitis corrupti nihil tempora qui quo voluptatem totam quo nostrum porro similique ad voluptatibus totam voluptatem molestiae aliquam itaque cum reprehenderit rerum voluptatem.', 'https://picsum.photos/id/75/200/300', '12', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(8, 8, 'Deleniti perspiciatis doloremque quis quia.', 'Placeat nihil sit deserunt et fuga aliquid natus magni molestiae voluptatibus repellat debitis et nobis qui cumque qui quas quam similique quidem et libero temporibus ea maxime et laudantium magni quisquam minima voluptatem qui accusamus labore ullam commodi totam est expedita impedit explicabo non labore adipisci distinctio quis aut eum nihil nobis dolor et est accusantium qui doloremque illum repellat soluta.', 'https://picsum.photos/id/97/200/300', '15', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(9, 18, 'Et pariatur unde.', 'Nam voluptatem sint error quis doloremque est expedita sit ullam omnis laboriosam vel quas odit nihil et laudantium excepturi repudiandae nihil laboriosam debitis et culpa et blanditiis hic maiores numquam et quo maiores beatae earum excepturi consequatur est consequatur corporis maiores delectus aut id excepturi error occaecati voluptatem aut doloremque possimus explicabo qui tenetur cum maxime et pariatur eos voluptas sed praesentium sit eius quaerat at eveniet tempore.', 'https://picsum.photos/id/69/200/300', '12', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(10, 6, 'Aliquid ut qui minima aut.', 'Dolore iste modi qui quis iusto et voluptates et ad aut in nemo minus voluptatem optio soluta porro porro qui repellat dolorem similique quis quis dolor facilis neque ipsum aspernatur aut et qui a nam esse error vero et nesciunt et quas quia eos aut dolor dolore in.', 'https://picsum.photos/id/1/200/300', '14', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(11, 9, 'Maxime ad accusantium nostrum ipsum.', 'Iste eveniet qui ea culpa blanditiis illo perferendis adipisci consequuntur provident cum impedit quia distinctio est quia nulla atque corrupti sunt beatae mollitia dolore eum distinctio ipsum earum et architecto molestias placeat nesciunt corrupti provident nesciunt mollitia consequatur optio corporis dolores totam facere tempore et sint suscipit aliquam voluptates illo in et sed temporibus harum inventore quos aliquam et dignissimos quisquam eaque ratione id suscipit quos et sed.', 'https://picsum.photos/id/41/200/300', '12', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(12, 16, 'Autem animi expedita quos praesentium.', 'Soluta accusantium rerum sunt veritatis hic aliquid cupiditate atque et deserunt illum cupiditate sunt non dicta eos vitae nemo aliquam consequatur quia alias iste nemo culpa voluptas praesentium sed quam quis et sint qui perferendis architecto et sapiente dignissimos qui est praesentium fugiat dolorem dicta dolore ut doloremque.', 'https://picsum.photos/id/27/200/300', '20', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(13, 9, 'Repudiandae sunt officia odit officiis eius.', 'Aliquam necessitatibus doloremque maxime est iure harum nostrum quis modi repellendus nihil eum maxime sed vitae perspiciatis nemo sit consectetur quas id est sapiente dolorum tempora quibusdam ea sint ipsa nisi ut in quos est eum reprehenderit magni in at quis.', 'https://picsum.photos/id/62/200/300', '12', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(14, 5, 'Et et dolores consectetur et.', 'Voluptatem ex itaque sed hic rerum quia eos quia molestiae qui magni vitae ipsa quibusdam tempora hic officiis sed autem quam consequuntur dolor sit eaque porro voluptatibus qui officia dicta numquam.', 'https://picsum.photos/id/99/200/300', '19', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(15, 14, 'Saepe aliquam doloribus qui repudiandae.', 'Dolores aut quo eum harum nam velit qui beatae minus maxime quia enim possimus distinctio sequi ex ut voluptatem nesciunt rerum eum dolorum saepe velit optio consequatur ratione voluptates atque deleniti rem quam nostrum distinctio sit optio perspiciatis nihil officia atque voluptate et iste aut et ab qui fuga officia porro corrupti perferendis sequi optio est maxime aut distinctio similique et ut necessitatibus explicabo eligendi rem.', 'https://picsum.photos/id/49/200/300', '17', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(16, 8, 'Molestiae consequuntur repudiandae blanditiis.', 'Quas non dolor est omnis consectetur sunt reprehenderit qui doloribus autem ut voluptatem consequatur id corporis quasi labore et perferendis quod voluptate ab vero iusto sint magnam consectetur ab quibusdam quis optio laborum nemo in nemo voluptates consectetur voluptate et distinctio recusandae voluptatem officiis et autem dolores iste porro distinctio perferendis explicabo soluta.', 'https://picsum.photos/id/67/200/300', '17', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(17, 17, 'Est qui id.', 'Quo omnis ut praesentium maiores ducimus dolores sequi aut consectetur minima aut est error earum sint explicabo quibusdam maxime sed occaecati sed ratione saepe est perspiciatis nesciunt sit in perferendis placeat unde sit.', 'https://picsum.photos/id/9/200/300', '16', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(18, 13, 'Officia labore a culpa quo.', 'Rerum enim sed et numquam vel ratione recusandae nemo vel doloremque delectus in explicabo unde quas nesciunt illo quod recusandae dolore qui quo harum asperiores maxime odit libero ratione enim rerum ea accusantium culpa consequatur hic non dolores sed odio ratione deserunt dolorem.', 'https://picsum.photos/id/58/200/300', '17', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(19, 14, 'Est temporibus fugiat in soluta eius.', 'Consequatur natus accusantium officia non eum consequatur dolores nihil vel quo inventore enim eveniet veniam illo inventore alias est voluptatem ut vel expedita aut unde vel cum qui perspiciatis et pariatur voluptatibus.', 'https://picsum.photos/id/58/200/300', '19', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(20, 11, 'Totam rerum qui molestias animi.', 'Qui dolores laborum quod ratione non animi omnis et consequuntur totam non distinctio et explicabo vel et ea ipsam sit cum dolor et et est consequatur ad culpa unde nisi consequatur odit dignissimos minima amet fuga aut ad saepe nobis id et cumque unde provident repudiandae rem et perferendis quia quam voluptate maxime accusantium deleniti similique delectus occaecati incidunt distinctio deserunt sit ipsum doloremque est.', 'https://picsum.photos/id/48/200/300', '13', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(21, 19, 'In aperiam voluptatem.', 'Sapiente incidunt voluptate labore repudiandae quia enim modi nobis nemo non corporis repellat facere alias dolorem sit voluptatem facilis praesentium eveniet fugiat molestias nisi repellat doloribus quidem est ullam consequatur deleniti error magnam veritatis autem accusantium consequatur assumenda quibusdam fuga enim dolores minus ut hic reprehenderit est dicta est aliquid error quia et.', 'https://picsum.photos/id/17/200/300', '14', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(22, 18, 'Et iusto eos quas.', 'Quia a ut repudiandae sunt similique dolorem mollitia aut enim dolor aperiam iure eum molestias voluptatem quisquam quia dignissimos voluptatum libero recusandae quod culpa tempore et assumenda ut aut quam saepe optio quisquam voluptates praesentium soluta sapiente vero sunt soluta enim nihil ipsam magni laborum eos quibusdam est minus eius soluta quia.', 'https://picsum.photos/id/66/200/300', '12', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(23, 13, 'Qui ea in est quia.', 'Porro in voluptatem eum quidem unde facere et qui non assumenda amet nobis neque sapiente porro atque eos ab rerum distinctio commodi occaecati quibusdam saepe tempore accusantium consequatur quis assumenda qui ratione similique qui quia expedita cupiditate ad accusamus eum possimus sit harum sit et consequatur aliquam unde aliquam error nostrum delectus modi saepe nemo odio eos nihil dolorum esse at eum architecto voluptates.', 'https://picsum.photos/id/28/200/300', '19', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(24, 17, 'Molestias et quaerat a odit ex.', 'Est omnis voluptatibus illo pariatur sunt explicabo eum quod id beatae id nesciunt ut molestiae qui aperiam vitae sit est vitae qui est minus aperiam rerum esse velit et ea explicabo ipsa et alias quia odio veritatis eaque nesciunt ut ipsa eum ea aut sed repellendus consequuntur id dolor tenetur libero aut libero.', 'https://picsum.photos/id/11/200/300', '13', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(25, 4, 'Ab dolorem rerum odit ratione est.', 'Molestias officiis incidunt dolor aut in qui est nihil odit magni quod necessitatibus suscipit tenetur quod ipsum vel consequatur temporibus id enim maxime debitis voluptatem enim nostrum voluptatem autem temporibus aspernatur et a et veniam suscipit sed ea delectus odit non esse deserunt nemo aliquam sequi est ab molestiae in asperiores explicabo distinctio tenetur et modi minima consequuntur tempora necessitatibus suscipit aut sequi voluptas quis.', 'https://picsum.photos/id/64/200/300', '17', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(26, 9, 'Totam non incidunt aperiam eum.', 'Laudantium repellendus consequatur quam cumque quo provident illo perspiciatis corrupti praesentium aut ullam perspiciatis voluptatem et laborum ducimus eligendi nam qui dolore asperiores debitis quaerat ea aliquam sit quam aspernatur dolor cupiditate dolor nihil consectetur laborum illum voluptatem molestiae consectetur aut magnam aut labore eum cum excepturi atque et doloremque ut cum mollitia quis consequuntur atque officiis id et quas corporis illum laborum odit sit vel nostrum.', 'https://picsum.photos/id/29/200/300', '20', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(27, 2, 'Illo debitis harum nisi.', 'In facere voluptatum voluptate molestiae dignissimos quae eveniet similique dolores ea voluptas consectetur labore et officiis fugit dicta commodi sint omnis ducimus ducimus aperiam possimus in dicta et blanditiis mollitia quaerat maiores ducimus.', 'https://picsum.photos/id/70/200/300', '10', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(28, 10, 'Et sint soluta et porro excepturi.', 'Sequi sapiente architecto dolorum reiciendis est inventore consequuntur et eveniet alias eum laboriosam quia corporis quod amet consequatur rerum voluptas deleniti sapiente quod ullam perferendis voluptatem aliquam accusantium rerum molestias fugiat molestiae quo ratione explicabo inventore eligendi nihil.', 'https://picsum.photos/id/66/200/300', '12', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(29, 7, 'Voluptas accusantium praesentium eius non.', 'Sapiente nemo quis mollitia et ratione sapiente expedita ut minus aut est impedit dolor tenetur dolorem et rerum dolor ratione consequatur voluptatem vero quo in quis est quo qui qui voluptatem exercitationem perspiciatis et nobis perspiciatis dignissimos eum quis est numquam quisquam omnis officiis in tenetur omnis debitis sed id amet et nesciunt enim.', 'https://picsum.photos/id/30/200/300', '15', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(30, 19, 'Excepturi quo aut recusandae.', 'Aspernatur ipsum ullam est quis occaecati nemo recusandae tenetur eos labore corrupti nisi praesentium est ea optio autem dolore consequatur id magni alias voluptatem pariatur minima et labore nihil voluptates quod error et dignissimos perspiciatis expedita non labore maiores ipsam fugiat ut dolor voluptatum aut qui qui possimus aut alias quod sapiente placeat voluptas nam sapiente laborum tempora.', 'https://picsum.photos/id/42/200/300', '17', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(31, 14, 'Optio sed quo quibusdam.', 'Quas et occaecati eum itaque quaerat reiciendis harum praesentium sit consequuntur enim sit ea facere et recusandae soluta saepe saepe quasi consequatur et accusamus itaque adipisci rerum delectus consectetur possimus delectus nihil fuga ipsum nihil et excepturi consequatur ducimus non aperiam dolore illo aut soluta consequuntur atque porro blanditiis aspernatur.', 'https://picsum.photos/id/92/200/300', '13', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(32, 5, 'Et laudantium magni vero quia error.', 'Adipisci delectus beatae exercitationem voluptatem quisquam et laboriosam ut ea accusantium cumque enim dolorum eum qui natus sit molestias ut quo at a velit nam qui ea culpa dicta dolorem facere unde molestiae sit quis doloribus rerum eius dignissimos necessitatibus harum dignissimos consequuntur et quod consequatur et fugit nam et temporibus libero consequatur sapiente quae doloribus nulla amet possimus animi eius omnis sed consequuntur voluptatibus.', 'https://picsum.photos/id/29/200/300', '12', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(33, 20, 'Est suscipit cum.', 'Aspernatur iusto magnam sapiente est repudiandae nemo enim saepe voluptatem voluptatibus delectus molestiae impedit est nesciunt porro ut velit maxime maxime neque nulla nisi perferendis illum dignissimos dolores eum sed ipsum cupiditate aut necessitatibus nobis voluptas vero aut consequatur aut aliquam neque dicta ut est itaque impedit nihil nesciunt at quam.', 'https://picsum.photos/id/56/200/300', '17', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(34, 18, 'Reprehenderit ipsum ut et quo.', 'Itaque modi qui modi minus quia inventore ab nihil rerum inventore aut dolores voluptate quis ducimus omnis vel commodi sed ex ducimus rerum esse sit mollitia natus ea sint quidem vel illo aperiam veritatis aliquid velit soluta consectetur iure ipsum architecto corporis rerum qui doloribus commodi iusto in animi quia minima soluta facilis.', 'https://picsum.photos/id/87/200/300', '16', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(35, 10, 'Earum molestias alias veniam.', 'Voluptas nihil quia natus consequatur voluptatem distinctio est labore dicta qui unde reprehenderit non nihil nihil et quisquam harum expedita qui qui sed dolore possimus molestias soluta quis et quaerat veritatis porro et sed praesentium et nesciunt praesentium unde debitis numquam voluptatem quia sint fugit exercitationem nemo quam est similique culpa reiciendis aut ea eum deserunt voluptatem dolor velit tempore est cupiditate unde sit suscipit ullam non inventore.', 'https://picsum.photos/id/72/200/300', '12', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(36, 19, 'Cupiditate fuga a enim.', 'Et non sint tempora quae explicabo quia nihil illum tenetur eaque expedita aliquam aliquid omnis eligendi nihil ut nisi tempora est cumque voluptatem tempore sit et assumenda doloremque distinctio non corporis in quia vel iure reiciendis assumenda facilis optio in itaque similique aut et quod impedit blanditiis libero eum iure ducimus in et ab illo.', 'https://picsum.photos/id/31/200/300', '18', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(37, 17, 'Et et sunt vero.', 'Tempora sit id placeat qui minima corrupti et quos id distinctio eveniet non aut provident pariatur excepturi omnis qui molestiae dolores exercitationem possimus quis laudantium a facere ut veniam veniam vel sequi magni exercitationem ratione omnis voluptas dolores labore eaque.', 'https://picsum.photos/id/29/200/300', '10', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(38, 6, 'Nam et eius fugit perspiciatis.', 'Omnis consequatur dignissimos ex nam repellendus voluptatem et quasi dolore tenetur enim praesentium libero nisi dolores magni aut rem delectus nihil quia et iusto fugiat quisquam ducimus dicta nihil voluptas aperiam nisi debitis aliquam temporibus rerum veniam labore culpa eveniet porro recusandae nostrum ut.', 'https://picsum.photos/id/88/200/300', '19', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(39, 9, 'Itaque laborum cumque velit et.', 'Voluptatem delectus rem quia mollitia incidunt assumenda facere ab quod voluptatem id placeat necessitatibus dolorum ipsum eligendi et et consectetur fugiat praesentium illum fuga id architecto distinctio reprehenderit qui quis ut non ut molestiae sed iure pariatur voluptatum quidem sequi dolorem occaecati distinctio cum veniam repellendus sunt error.', 'https://picsum.photos/id/70/200/300', '13', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(40, 16, 'Eos error porro.', 'Non consequatur labore sed perferendis qui quia voluptates veniam quia quam ut incidunt minus itaque libero id nihil totam quaerat aliquid ratione molestiae optio in aliquid rerum et dolore corrupti sit eligendi unde et.', 'https://picsum.photos/id/69/200/300', '14', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(41, 6, 'In hic sed.', 'Omnis et rerum molestiae unde voluptas sint magni aliquid placeat molestiae assumenda nam eligendi officia neque esse eum ut occaecati officiis ab omnis ut alias et error ad fugit earum quis non voluptas sunt maiores totam totam officia quo ab distinctio soluta officia nesciunt modi autem tempore facilis voluptatibus vel ipsa consequatur sint nobis molestias qui mollitia nihil dolor odit laudantium sit qui at ratione necessitatibus et suscipit.', 'https://picsum.photos/id/70/200/300', '17', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(42, 15, 'Quo non qui.', 'Accusantium et voluptatem dolores pariatur esse reiciendis voluptates iure quos sit ducimus dignissimos dolor culpa ut sequi laboriosam eum iusto perferendis quasi repudiandae aut aspernatur a voluptate soluta reiciendis error et ut perspiciatis quae recusandae iure a velit totam sunt dolor et ducimus est officiis qui architecto magni modi qui.', 'https://picsum.photos/id/19/200/300', '12', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(43, 3, 'Alias ut quam porro.', 'Corporis voluptate ut aut repellendus commodi delectus ut inventore facere ut corporis dolorem exercitationem incidunt est harum earum suscipit quia hic esse qui a dolorum necessitatibus quae pariatur illum ratione vel sint ut esse ducimus corporis et qui voluptatibus ea mollitia ut accusamus quasi aut vel deleniti officiis aut eligendi et et sunt iste maxime id aut omnis sit nobis quia eos quo odio.', 'https://picsum.photos/id/92/200/300', '10', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(44, 12, 'Velit reprehenderit aut saepe.', 'Quo hic consequatur quibusdam id commodi consequatur consequatur quis commodi omnis quasi porro voluptas reiciendis maiores nisi ea repudiandae eum architecto quaerat impedit saepe necessitatibus eveniet vitae impedit vel omnis accusantium impedit qui voluptatem quia aut illo ratione debitis sit debitis et.', 'https://picsum.photos/id/78/200/300', '14', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(45, 12, 'Nihil occaecati quis ea.', 'Eaque non quia vel illo perferendis tempore qui amet in rerum eius consequatur vel aliquid omnis sit rem quae sint aspernatur tempore reiciendis aspernatur quae asperiores porro ut culpa dignissimos rerum quod quas accusamus qui adipisci eos minima et voluptatem.', 'https://picsum.photos/id/19/200/300', '17', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(46, 14, 'Ut aut excepturi necessitatibus doloribus at.', 'Praesentium commodi consequatur rerum sit quia ullam facilis et similique veniam rerum dolores molestiae rerum asperiores aut quisquam laborum saepe nisi totam necessitatibus ut soluta nulla aut voluptas inventore laborum qui molestiae atque et ipsum eum accusantium doloremque ipsa laboriosam dicta placeat unde ratione.', 'https://picsum.photos/id/65/200/300', '19', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(47, 17, 'Aut perferendis eius.', 'Quia consectetur magni sit blanditiis explicabo aspernatur quas qui dolores numquam non veniam quia eveniet omnis sed aut mollitia vel dignissimos corrupti totam et aspernatur illo voluptas minima et quos tenetur ullam consequatur quis quis iusto maxime ratione dolores maxime aut accusantium unde quasi illum optio sed distinctio libero in dolor illo voluptatibus quasi quod quis ducimus numquam qui facere sunt.', 'https://picsum.photos/id/51/200/300', '12', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(48, 13, 'Cupiditate quisquam non quasi.', 'Nesciunt quia aliquid dolorem quam quasi assumenda id ipsa dolorum perspiciatis laborum modi praesentium dolores rerum sint illum sequi voluptatem non vitae doloribus aliquid neque sunt autem at quod doloribus beatae et qui eum error soluta sequi dolor necessitatibus iste consequatur et excepturi nihil dolores similique quis consectetur perferendis facere saepe sed.', 'https://picsum.photos/id/57/200/300', '11', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(49, 4, 'Itaque voluptas est.', 'Et quos labore ex optio hic repudiandae incidunt est culpa magni atque temporibus tempore quisquam exercitationem eveniet rem omnis ad quo non in cum vel facere at repellat reprehenderit voluptatem sint dolorem qui ex corporis minima ut tempora at hic odio nihil optio ut distinctio omnis deserunt aperiam deserunt quo unde perspiciatis adipisci et nobis ut non.', 'https://picsum.photos/id/4/200/300', '19', '2020-08-03 05:35:42', '2020-08-03 05:35:42'),
(50, 2, 'Enim itaque placeat quo.', 'Delectus voluptatibus facere et nihil voluptatem est est ipsum beatae ratione mollitia est assumenda corrupti ex qui architecto provident excepturi ipsa vitae qui natus rerum esse molestias ex et qui rerum ut qui aut vel ut ut ea placeat est.', 'https://picsum.photos/id/81/200/300', '17', '2020-08-03 05:35:42', '2020-08-03 05:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_history`
--

CREATE TABLE `borrow_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `returned_at` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_21_093207_create_permission_tables', 1),
(5, '2020_07_21_120423_create_authors_table', 1),
(6, '2020_07_21_120524_create_books_table', 1),
(7, '2020_07_21_120654_add_qty_on_books_table', 1),
(8, '2020_07_25_114318_create_borrow_history_table', 1),
(9, '2020_07_26_002943_add_returned_at_and_receiver_user_id_on_borrow_history_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2020-08-03 05:35:41', '2020-08-03 05:35:41'),
(2, 'visitor', 'web', '2020-08-03 05:35:41', '2020-08-03 05:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'administrator@simpustaka.com', '2020-08-03 05:35:42', '$2y$10$3C0VZc0OZFobtGjL63WQVujeSdktlLFtcO6ajCyS50UPtJjCFp4.m', NULL, '2020-08-03 05:35:42', '2020-08-03 05:35:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_author_id_foreign` (`author_id`);

--
-- Indexes for table `borrow_history`
--
ALTER TABLE `borrow_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrow_history_user_id_foreign` (`user_id`),
  ADD KEY `borrow_history_book_id_foreign` (`book_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `borrow_history`
--
ALTER TABLE `borrow_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `borrow_history`
--
ALTER TABLE `borrow_history`
  ADD CONSTRAINT `borrow_history_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
