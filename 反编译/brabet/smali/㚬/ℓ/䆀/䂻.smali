.class public final L㚬/ℓ/䆀/䂻;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ḓ:L㚬/ℓ/䆀/䂻;


# instance fields
.field public final உ:I

.field public final 㚬:I

.field public final 㺴:I

.field public final 䂻:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, L㚬/ℓ/䆀/䂻;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, L㚬/ℓ/䆀/䂻;-><init>(IIII)V

    sput-object v0, L㚬/ℓ/䆀/䂻;->ḓ:L㚬/ℓ/䆀/䂻;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, L㚬/ℓ/䆀/䂻;->உ:I

    iput p2, p0, L㚬/ℓ/䆀/䂻;->䂻:I

    iput p3, p0, L㚬/ℓ/䆀/䂻;->㚬:I

    iput p4, p0, L㚬/ℓ/䆀/䂻;->㺴:I

    return-void
.end method

.method public static உ(IIII)L㚬/ℓ/䆀/䂻;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    sget-object p0, L㚬/ℓ/䆀/䂻;->ḓ:L㚬/ℓ/䆀/䂻;

    return-object p0

    :cond_0
    new-instance v0, L㚬/ℓ/䆀/䂻;

    invoke-direct {v0, p0, p1, p2, p3}, L㚬/ℓ/䆀/䂻;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const-class v2, L㚬/ℓ/䆀/䂻;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, L㚬/ℓ/䆀/䂻;

    iget v2, p0, L㚬/ℓ/䆀/䂻;->㺴:I

    iget v3, p1, L㚬/ℓ/䆀/䂻;->㺴:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, L㚬/ℓ/䆀/䂻;->உ:I

    iget v3, p1, L㚬/ℓ/䆀/䂻;->உ:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, L㚬/ℓ/䆀/䂻;->㚬:I

    iget v3, p1, L㚬/ℓ/䆀/䂻;->㚬:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, L㚬/ℓ/䆀/䂻;->䂻:I

    iget p1, p1, L㚬/ℓ/䆀/䂻;->䂻:I

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, L㚬/ℓ/䆀/䂻;->உ:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, L㚬/ℓ/䆀/䂻;->䂻:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, L㚬/ℓ/䆀/䂻;->㚬:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, L㚬/ℓ/䆀/䂻;->㺴:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insets{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㚬/ℓ/䆀/䂻;->உ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㚬/ℓ/䆀/䂻;->䂻:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㚬/ℓ/䆀/䂻;->㚬:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L㚬/ℓ/䆀/䂻;->㺴:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 䂻()Landroid/graphics/Insets;
    .locals 4

    iget v0, p0, L㚬/ℓ/䆀/䂻;->உ:I

    iget v1, p0, L㚬/ℓ/䆀/䂻;->䂻:I

    iget v2, p0, L㚬/ℓ/䆀/䂻;->㚬:I

    iget v3, p0, L㚬/ℓ/䆀/䂻;->㺴:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method
