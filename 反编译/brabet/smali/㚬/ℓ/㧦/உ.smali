.class public final L㚬/ℓ/㧦/உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ℓ/㧦/உ$䂻;,
        L㚬/ℓ/㧦/உ$உ;
    }
.end annotation


# static fields
.field public static final ᆻ:L㚬/ℓ/㧦/உ;

.field public static final ḓ:Ljava/lang/String;

.field public static final ℓ:L㚬/ℓ/㧦/உ;

.field public static final 㺴:L㚬/ℓ/㧦/㺴;

.field public static final 䆀:Ljava/lang/String;


# instance fields
.field public final உ:Z

.field public final 㚬:L㚬/ℓ/㧦/㺴;

.field public final 䂻:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, L㚬/ℓ/㧦/ḓ;->㚬:L㚬/ℓ/㧦/㺴;

    sput-object v0, L㚬/ℓ/㧦/உ;->㺴:L㚬/ℓ/㧦/㺴;

    const/16 v1, 0x200e

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, L㚬/ℓ/㧦/உ;->ḓ:Ljava/lang/String;

    const/16 v1, 0x200f

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, L㚬/ℓ/㧦/உ;->䆀:Ljava/lang/String;

    new-instance v1, L㚬/ℓ/㧦/உ;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, L㚬/ℓ/㧦/உ;-><init>(ZIL㚬/ℓ/㧦/㺴;)V

    sput-object v1, L㚬/ℓ/㧦/உ;->ᆻ:L㚬/ℓ/㧦/உ;

    new-instance v1, L㚬/ℓ/㧦/உ;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v0}, L㚬/ℓ/㧦/உ;-><init>(ZIL㚬/ℓ/㧦/㺴;)V

    sput-object v1, L㚬/ℓ/㧦/உ;->ℓ:L㚬/ℓ/㧦/உ;

    return-void
.end method

.method public constructor <init>(ZIL㚬/ℓ/㧦/㺴;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, L㚬/ℓ/㧦/உ;->உ:Z

    iput p2, p0, L㚬/ℓ/㧦/உ;->䂻:I

    iput-object p3, p0, L㚬/ℓ/㧦/உ;->㚬:L㚬/ℓ/㧦/㺴;

    return-void
.end method

.method public static உ(Ljava/lang/CharSequence;)I
    .locals 2

    new-instance v0, L㚬/ℓ/㧦/உ$䂻;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, L㚬/ℓ/㧦/உ$䂻;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, L㚬/ℓ/㧦/உ$䂻;->㺴()I

    move-result p0

    return p0
.end method

.method public static ḓ(Ljava/util/Locale;)Z
    .locals 1

    invoke-static {p0}, L㚬/ℓ/㧦/䆀;->䂻(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static 㚬()L㚬/ℓ/㧦/உ;
    .locals 1

    new-instance v0, L㚬/ℓ/㧦/உ$உ;

    invoke-direct {v0}, L㚬/ℓ/㧦/உ$உ;-><init>()V

    invoke-virtual {v0}, L㚬/ℓ/㧦/உ$உ;->உ()L㚬/ℓ/㧦/உ;

    move-result-object v0

    return-object v0
.end method

.method public static 䂻(Ljava/lang/CharSequence;)I
    .locals 2

    new-instance v0, L㚬/ℓ/㧦/உ$䂻;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, L㚬/ℓ/㧦/உ$䂻;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, L㚬/ℓ/㧦/உ$䂻;->ḓ()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final ᆻ(Ljava/lang/CharSequence;L㚬/ℓ/㧦/㺴;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, L㚬/ℓ/㧦/㺴;->உ(Ljava/lang/CharSequence;II)Z

    move-result p2

    iget-boolean v0, p0, L㚬/ℓ/㧦/உ;->உ:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, L㚬/ℓ/㧦/உ;->உ(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object p1, L㚬/ℓ/㧦/உ;->ḓ:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-boolean v0, p0, L㚬/ℓ/㧦/உ;->உ:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, L㚬/ℓ/㧦/உ;->உ(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    :cond_2
    sget-object p1, L㚬/ℓ/㧦/உ;->䆀:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public ℓ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, L㚬/ℓ/㧦/உ;->㚬:L㚬/ℓ/㧦/㺴;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, L㚬/ℓ/㧦/உ;->ㄏ(Ljava/lang/CharSequence;L㚬/ℓ/㧦/㺴;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public ㄏ(Ljava/lang/CharSequence;L㚬/ℓ/㧦/㺴;Z)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, L㚬/ℓ/㧦/㺴;->உ(Ljava/lang/CharSequence;II)Z

    move-result p2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, L㚬/ℓ/㧦/உ;->㺴()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    sget-object v1, L㚬/ℓ/㧦/ḓ;->䂻:L㚬/ℓ/㧦/㺴;

    goto :goto_0

    :cond_1
    sget-object v1, L㚬/ℓ/㧦/ḓ;->உ:L㚬/ℓ/㧦/㺴;

    :goto_0
    invoke-virtual {p0, p1, v1}, L㚬/ℓ/㧦/உ;->ᆻ(Ljava/lang/CharSequence;L㚬/ℓ/㧦/㺴;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    iget-boolean v1, p0, L㚬/ℓ/㧦/உ;->உ:Z

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_3

    const/16 v1, 0x202b

    goto :goto_1

    :cond_3
    const/16 v1, 0x202a

    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x202c

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_2
    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    sget-object p2, L㚬/ℓ/㧦/ḓ;->䂻:L㚬/ℓ/㧦/㺴;

    goto :goto_3

    :cond_5
    sget-object p2, L㚬/ℓ/㧦/ḓ;->உ:L㚬/ℓ/㧦/㺴;

    :goto_3
    invoke-virtual {p0, p1, p2}, L㚬/ℓ/㧦/உ;->䆀(Ljava/lang/CharSequence;L㚬/ℓ/㧦/㺴;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    return-object v0
.end method

.method public 㺴()Z
    .locals 1

    iget v0, p0, L㚬/ℓ/㧦/உ;->䂻:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final 䆀(Ljava/lang/CharSequence;L㚬/ℓ/㧦/㺴;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, L㚬/ℓ/㧦/㺴;->உ(Ljava/lang/CharSequence;II)Z

    move-result p2

    iget-boolean v0, p0, L㚬/ℓ/㧦/உ;->உ:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, L㚬/ℓ/㧦/உ;->䂻(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object p1, L㚬/ℓ/㧦/உ;->ḓ:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-boolean v0, p0, L㚬/ℓ/㧦/உ;->உ:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, L㚬/ℓ/㧦/உ;->䂻(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    :cond_2
    sget-object p1, L㚬/ℓ/㧦/உ;->䆀:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method
