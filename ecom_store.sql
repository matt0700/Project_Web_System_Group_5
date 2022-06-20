
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Story', '\r\nLikha School Supplies is a newly established shop in Manila, Philippines that offers low-cost educational commodities to customers. Likha School Supplies is owned by a group of young entrepreneurs who aspired to be successful in life at an early age. 
');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Administrator', 'likha@gmail.com', 'Likha_123', 'user-profile-min.png', '8736300', 'Philippines', 'Young Entrpreneur', 'A group of young entrepreneurs who aspired to be successful in life at an early age. These individuals cultivate mutually beneficial relationships for the welfare and progress of the company, and all of their efforts are concentrated on supplying their customers with high-quality tools that will accompany them in their success.');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'School & Office Supplies', 'no', 'School&Supplies.png'),
(3, 'Pens & Inks', 'no', 'pens&inks.jpg'),
(4, 'Knives & Accessories', 'no', 'knives&accessories.jpg'),
(5, 'Rulers, Protractors, & Stencils', 'no', 'RPS.jpg');
(6, 'Writing', 'no', 'Writing.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'likha@gmail.com', 'Contact Us!', 'If you have any questions, please do not hesitate to contact us; our customer service center is available to you 24 hours a day, seven days a week.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(7, 59, 'LIKHAISTHEBEST', '104', 'LIKHAISTHEBEST', 2, 1),
(8, 58, 'LIKHAPAMORE', '225', 'LIKHAPAMORE', 3, 1),
(9, 36, 'SCHOOLSUPPLIES', '148.75', 'SCHOOLSUPPLIES', 3, 1),
(10, 64, 'OFFICESUPPLIES', '280', 'OFFICESUPPLIES', 3, 1),
(11, 55, 'BILINARITO', '160', 'BILINARITO', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES

-- --------------------------------------------------------
--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Crown Supply Corporation', 'yes', 'crownsupply.png'),
(3, 'E-Plus Stationery, Inc.', 'yes', 'eplus.jpg'),
(4, 'E-Plus Stationery, Inc.', 'yes', 'manuel.png'),

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(5, 7, 5, 5, '2022-05-30 14:52:17', 'Pencil (each)', 'product-url-1', 'Pencil 1.jpg', 'Pencil 2.jpg', 'Pencil 3.jpg', 8, 8, 'A pencil is a writing or drawing implement with a solid pigment core encased in a sleeve, barrel, or shaft that prevents breaking the core or marking a users hand.', 'Sharpen To A Fine, Exact Point!
Soft, Non-Smudge Eraser!', 'Writing', 'Writing', 'product')
(8, 4, 2, 4, '2022-05-27 14:26:50', 'Pen', 'product-url-2', 'Pen 1.jpg', 'Pen 2.jpg', 'Pen 3.jpg', 13, 13, 'An instrument for writing or drawing with ink, typically consisting of a metal nib or ball, or a nylon tip, fitted into a metal or plastic holder.', 'Smooth writing, durable, sufficient, low carbon.', 'Smooth writing, durable, sufficient, low carbon.',
'Pen & Inks', 'Pen & Inks', 'product')
(9, 5, 4, 7, '2022-05-27 14:33:56', 'Scissors', 'product-url-3', 'Scissors 1.jpg', 'Scissors 2.jpg', 'Scissors 3.jpg', 25, 25, 'An instrument used for cutting cloth, paper, and other thin material, consisting of two blades laid one on top of the other and fastened in the middle so as to allow them to be opened and closed by a thumb and finger inserted through rings on the end of their handles.', 'Stainless steel blade.',
'Knives & Accessories', 'Knives & Accessories', 'product')
(12, 8, 5, 2, '2022-05-27 14:40:49', 'Glue', 'product-url-4', 'Glue 1.jpg', 'Glue 2.jpg', 'Glue 3.jpg', 15, 15, 'An adhesive substance used for sticking objects or materials together.', 'Multi-purpose glue, Safe and Non-toxic, Washable, Dries clear.', 'Adhesives & Tapes', 'Adhesives & Tapes', 'product')
(13, 9, 2, 3, '2022-05-27 14:56:56', 'Ruler', 'product-url-5', 'Ruler 1.jpg', 'Ruler 2.jpg', 'Ruler 3.jpg', 10, 10, 'A ruler, sometimes called a rule or line gauge, is a device used in geometry and technical drawing, as well as the engineering and construction industries, to measure distances or draw straight lines.', 'Flexible and plastic', 'Ruler, Protractors, & Stencils', 'Ruler, Protractors, & Stencils', 'product')
(14, 5, 5, 7, '2022-05-27 14:57:16', 'Notebook', 'product-url-6', 'Notebook 1.jpg', 'Notebook 2.jpg', 'Notebook 3.jpg', 15, 15, 'Notebook is a small book or binder of paper pages, often ruled, used for purposes such as recording notes or memoranda, writing, drawing or scrapbooking.', 'Thick and affordable.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(15, 5, 5, 8, '2022-05-27 15:17:37', 'Folder', 'product-url-7', 'Folder 1.jpg', 'Folder 2.jpg', 'Folder 3.jpg', 15, 15, 'A folding cover or holder, typically made of stiff paper or cardboard, for storing loose papers.', 'Authentic Product and High - Quality Items.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(16, 5, 5, 8, '2022-05-27 20:25:44', 'Plastic Folder (long)', 'product-url-8', 'Plastic Folder 1.jpg', 'Plastic Folder 2.jpg', 'Plastic Folder 3.jpg', 15, 15, 'A folding cover or holder, typically made of stiff paper or cardboard, for storing loose papers.', 'Authentic Product and High - Quality Items.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(17, 5, 5, 8, '2022-05-27 15:32:20', 'Pencil Sharpener', 'product-url-9', 'Sharpener 1.jpg', 'Sharpener 2.jpg', 'Sharpener 3jpg', 6, 6, 'A pencil sharpener (also referred to as pencil pointer or in Ireland as a parer or topper) is a tool for sharpening a pencils writing point by shaving away its worn surface.', 'Authentic Product, efficient and multi-function. ', 'Writing Materials', 'Writing Materials', 'product')
(18, 5, 5, 8, '2022-05-27 20:42:39', 'Highlighters', 'product-url-10', 'Highlighter 1.jpg', 'Highlighter 2.jpg', 'Highlighter 3jpg', 15, 15, 'This pack of colorful highlighters can be used to write on both, light and dark surfaces. Best for use on porous materials like paper and cardboard, the alcohol-based ink in these permanent markers is of low-odor and dries quickly. Electrify your paper with color, buy this product online today!', 'Safety Non-Toxic Convenience, pigment ink, and clean & quick dry.', 'Writing Materials', 'Writing Materials', 'product')
(19, 5, 5, 8, '2022-05-27 13:25:23', 'Plastic Folder Short', 'product-url-11', 'Plastic Folder 1.jpg', 'Plastic Folder 2.jpg', 'Plastic Folder 3.jpg', 10, 10, 'A folding cover or holder, typically made of stiff paper or cardboard, for storing loose papers.', 'Authentic Product and High - Quality Items.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(20, 5, 5, 8, '2022-05-28 13:25:38', 'Short Bond Paper (by ream)', 'product-url-12', 'Short 1.jpg', 'Short 2.jpg', 'Short 3.jpg', 300, 300, 'This type of paper got its name from its use in printing bonds and legal documents, but now it is used in a wide variety of arts and crafts.', 'Authentic Product and High - Quality Items.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(21, 5, 5, 8, '2022-05-28 13:25:40', 'Long Bond Paper (by ream)', 'product-url-13', 'Long 1.jpg', 'Long 2.jpg', 'Long 3.jpg', 450, 450, 'This type of paper got its name from its use in printing bonds and legal documents, but now it is used in a wide variety of arts and crafts.', 'Authentic Product and High - Quality Items.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(22, 5, 5, 8, '2022-05-28 13:26:02', 'A4 Bond Paper (by ream)', 'product-url-14', 'A4 1.jpg', 'A4 2.jpg', 'A4 3.jpg', 500, 500, 'This type of paper got its name from its use in printing bonds and legal documents, but now it is used in a wide variety of arts and crafts.', 'Authentic Product and High - Quality Items', 'School & Office Supplies', 'School & Office Supplies', 'product')
(23, 5, 5, 8, '2022-05-28 13:26:17', 'Yellow Paper', 'product-url-15', 'Yellow Pad 1.jpg', 'Yellow Pad 2.jpg', 'Yellow Pad 3.jpg', 60, 60, 'Made from High Grade Book Paper for smooth writing experience. Flexo ruled on both sides of the paper . Extra stiff back board for added writing support.', 'Authentic Product and High - Quality Items.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(24, 5, 5, 8, '2022-05-28 13:26:31', 'Sticky Notes', 'product-url-16', 'Sticky 1.jpg', 'Sticky 2.jpg', 'Sticky 3.jpg', 35, 35, 'It is a small piece of paper with a re-adherable strip of glue on its back, made for temporarily attaching notes to documents and other surfaces.', 'Authentic Product, High - Quality Items and Colorful in design.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(25, 5, 5, 8, '2022-05-28 13:26:45', 'Scotch Tape', 'product-url-17', 'Scotch 1.jpg', 'Scotch 2.jpg', 'Scotch 3.jpg', 20, 20, 'It is suitable for light and heavy packaging applications and is recommended for export carton sealing purposes. Ideal for packaging material where quick & high bonding is required.', 'Authentic Product, High - Quality Items.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(26, 5, 5, 8, '2022-05-28 13:26:58', 'Pushpins (by box)', 'product-url-18', 'Pushpins 1.jpg', 'Pushpins 2.jpg', 'Pushpins 3.jpg', 15, 15, 'Push Pins for Cork Board, Push Pins for Wall, Various Colors Push Pins, Office Organization Push Pins, Plastic Marking Pins, Thumb Push pin', 'Authentic Product, High - Quality Items.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(27, 5, 5, 8, '2022-05-28 13:27:15', 'Permanent Markers', 'product-url-19', 'Marker 1.jpg', 'Marker 2.jpg', 'Marker 3.jpg', 20, 20, 'Permanent markers enable you to permanently write on a wide range of surface materials. They are a flexible solution for more than just indoor use.', 'Authentic Product, High - Quality Items.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(28, 5, 5, 8, '2022-05-28 13:27:32', 'Paper Clips (per box)', 'product-url-20', 'Clip 1.jpg', 'Clip 2.jpg', 'Clip 3.jpg', 30, 30, ' Premium Paperclips. Color paper clip 33mm small Multi-colored', 'Authentic Product, High - Quality Items. Colorful.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(29, 5, 5, 8, '2022-05-28 16:16:43', 'Erasers', 'product-url-21', 'Eraser 1.jpg', 'Eraser 2.jpg', 'Eraser 3.jpg', 10, 10, 'Premium quality for first-class erasing performance. No discoloration of the eraser on paper and it is age resistant. Phthalate and latex free.', 'Authentic Product, High - Quality Items.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(30, 5, 5, 8, '2022-05-28 13:28:09', 'Correction Tape', 'product-url-22', 'Correction 1.jpg', 'Correction 2.jpg', 'Correction 3.jpg', 25, 25, 'Easy to use, clean & no drying time. Environmental friendly, Non-toxic. Odorless.', 'Authentic Product, High - Quality Items.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(31, 5, 5, 8, '2022-05-28 13:28:09', 'Compass', 'product-url-23', 'Compass 1.jpg', 'Compass 2.jpg', 'Compass 3.jpg', 15, 15, 'This compass is cute with key ring design and easy to carry, which is a practical and perfect accessory for those who love outdoor activities.', 'Authentic Product, High - Quality Items.', 'School & Office Supplies', 'School & Office Supplies', 'product')
(32, 5, 5, 8, '2022-05-28 13:28:09', 'Protractor', 'product-url-24', 'Protractor 1.jpg', 'Protractor 2.jpg', 'Protractor 3.jpg', 15, 15, 'A protractor is a tool used to measure angles. Most protractors measure angles in degrees (°).', 'Authentic Product, High - Quality Items.', 'Rulers, Protractors, & Stencils', 'Rulers, Protractors, & Stencils', 'product')
(33, 5, 5, 8, '2022-05-28 13:49:14', 'Cable Ties (by pack)', 'product-url-25', 'Cable Ties 1.jpg', 'Cable Ties 2.jpg', 'Cable Ties 3.jpg', 30, 30, 'A cable tie is a type of fastener used for holding items together, most commonly electrical cables or wires', 'Authentic Product, High - Quality Items.', 'School & Office Supplies', 'School & Office Supplies', 'product')

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'NOTEBOOK & PADS', 'yes', 'ntbk.jpg'),
(5, 'ARTS & CRAFTS', 'yes', 'art.png'),
(6, 'PRINTER PAPER', 'yes', 'print.jpg'),
(7, 'SCHOOL STUFFS & OTHERS', 'yes', 'schoolstuffs.png'),

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'Likha School Supplies (Tondo Branch)', 'store1.jpg', ' Likha School Supplies is a newly established shop in Manila, Philippines that offers low-cost educational commodities to customers. Likha School Supplies is owned by a group of young entrepreneurs who aspired to be successful in life at an early age. ', 'View Map', 'http://www.likhaschoolsupplies.com/'),
(5, 'Likha School Supplies (Sta.Mesa Branch)', 'store2.png', 'Likha School Supplies is a newly established shop in Manila, Philippines that offers low-cost educational commodities to customers. Likha School Supplies is owned by a group of young entrepreneurs who aspired to be successful in life at an early age. ', 'View Map', 'http://www.likhaschoolsupplies.com/'),
(6, 'Likha School Supplies (Intramuros Branch)', 'store3.jpg', 'Likha School Supplies is a newly established shop in Manila, Philippines that offers low-cost educational commodities to customers. Likha School Supplies is owned by a group of young entrepreneurs who aspired to be successful in life at an early age. ', 'View Map', 'http://www.likhaschoolsupplies.com/');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules and Regulations', 'rules', 'The purpose of the Company Rules is not to limit any customer's rights, but to define and protect everyone's rights so that the business can run safely, efficiently, and consistently. The Company may, from time to time, establish, modify, and enforce rules and regulations, policies, and practices that customers must follow. The following rules apply to both customers and sellers:

• Avoid any sexually explicit or lewd content or products in this online shopping app.

• Pranks and illegitimate orders are also prohibited.

• You can only pay online or in cash at the time of delivery.

• To reduce scammers, transactions should be kept solely between the customer and the seller.

• Check and review the items thoroughly for a better experience.

• Safety and security is a must.

The following laws will also apply between the buyer and seller:

• Consumer Act – internet consumer protection

• Data Privacy Act – for administrative or civil violations

• Online Content Regulation – restricting online access to materials promoting indecent content.

• Cybercrime and Cybersecurity – prohibit hacking, cracking, or unauthorized computer access in order to corrupt, alter, steal, or destroy electronic data.

• Online Dispute Resolution and Domain-Name Regulation – when registering official domain names that include business trademarks

If a customer violates any of these rules, they may be suspended pending further investigation and review, or in the worst-case scenario, they may be banned.'),
(2, 'Refund Policy', 'refund', 'There will be no refund of payments and return of products once it has been delivered.')
(3, 'Discount / Flashsales', 'discount', 'Likha School Supplies employs a value-based pricing method to set its prices based on how the consumer perceives the value of the shop's commodities rather than the specific cost of how they were manufactured. It is a customer-focused pricing strategy, which implies that its pricing is determined by how much the customer believes a product is worth. To provide the best customer experience, Likha focuses on supplying high-quality products at a fair price. It was a commendable idea to ask consumers how much they would be willing to pay for different products the company produces. This pricing plan succeeded for many companies, and the companies began to benefit as the prices of their merchandise began to rise, which is what we are aiming for.')
-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
