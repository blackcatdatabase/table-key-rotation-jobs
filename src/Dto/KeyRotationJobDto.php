<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\KeyRotationJobs\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Žádná logika; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class KeyRotationJobDto {
    public function __construct(
        public readonly ?int $id,
        public readonly string $basename,
        public readonly ?int $targetVersion,
        public readonly ?\DateTimeImmutable $scheduledAt,
        public readonly ?\DateTimeImmutable $startedAt,
        public readonly ?\DateTimeImmutable $finishedAt,
        public readonly string $status,
        public readonly int $attempts,
        public readonly ?int $executedBy,
        public readonly ?string $result,
        public readonly \DateTimeImmutable $createdAt
    ) {}

    /** Vhodné pro serializaci/logování (bez binárních/velkých blobů). */
    public function toArray(): array {
        // get_object_vars funguje dobře s public readonly vlastnostmi
        return get_object_vars($this);
    }
}
