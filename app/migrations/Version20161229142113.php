<?php

namespace Sylius\Migrations;

use Doctrine\DBAL\Migrations\AbstractMigration;
use Doctrine\DBAL\Schema\Schema;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
class Version20161229142113 extends AbstractMigration
{
    /**
     * @param Schema $schema
     */
    public function up(Schema $schema)
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() != 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE press_article DROP FOREIGN KEY FK_9B72EEEE16A2B381');
        $this->addSql('DROP TABLE book');
        $this->addSql('DROP TABLE event');
        $this->addSql('DROP TABLE press_article');
    }

    /**
     * @param Schema $schema
     */
    public function down(Schema $schema)
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() != 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE book (id INT AUTO_INCREMENT NOT NULL, title VARCHAR(255) NOT NULL COLLATE utf8_unicode_ci, author VARCHAR(255) NOT NULL COLLATE utf8_unicode_ci, description LONGTEXT NOT NULL COLLATE utf8_unicode_ci, facebook_link_url VARCHAR(255) DEFAULT NULL COLLATE utf8_unicode_ci, image_url VARCHAR(255) DEFAULT NULL COLLATE utf8_unicode_ci, release_date DATE NOT NULL, purchase_order_image_url VARCHAR(255) DEFAULT NULL COLLATE utf8_unicode_ci, tag TINYINT(1) DEFAULT \'0\' NOT NULL, slug VARCHAR(255) NOT NULL COLLATE utf8_unicode_ci, uploaded DATETIME DEFAULT NULL, UNIQUE INDEX UNIQ_CBE5A3312B36786B (title), UNIQUE INDEX UNIQ_CBE5A331989D9B62 (slug), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE event (id INT AUTO_INCREMENT NOT NULL, title VARCHAR(255) NOT NULL COLLATE utf8_unicode_ci, description LONGTEXT NOT NULL COLLATE utf8_unicode_ci, date_start DATETIME NOT NULL, date_end DATETIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('CREATE TABLE press_article (id INT AUTO_INCREMENT NOT NULL, book_id INT DEFAULT NULL, title VARCHAR(255) NOT NULL COLLATE utf8_unicode_ci, image_url VARCHAR(255) DEFAULT NULL COLLATE utf8_unicode_ci, uploaded DATETIME DEFAULT NULL, INDEX IDX_9B72EEEE16A2B381 (book_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE press_article ADD CONSTRAINT FK_9B72EEEE16A2B381 FOREIGN KEY (book_id) REFERENCES book (id)');
    }
}
