.class public L㚬/䂻/ბ/㲧;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/䂻/ბ/㲧$உ;
    }
.end annotation


# instance fields
.field public final உ:Landroid/widget/TextView;

.field public ಫ:I

.field public ᆻ:L㚬/䂻/ბ/ᭊ;

.field public ḓ:L㚬/䂻/ბ/ᭊ;

.field public ἥ:Z

.field public ℓ:L㚬/䂻/ბ/ᭊ;

.field public final ㄏ:L㚬/䂻/ბ/㫏;

.field public 㚬:L㚬/䂻/ბ/ᭊ;

.field public 㧦:I

.field public 㹖:Landroid/graphics/Typeface;

.field public 㺴:L㚬/䂻/ბ/ᭊ;

.field public 䂻:L㚬/䂻/ბ/ᭊ;

.field public 䆀:L㚬/䂻/ბ/ᭊ;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, L㚬/䂻/ბ/㲧;->ಫ:I

    const/4 v0, -0x1

    iput v0, p0, L㚬/䂻/ბ/㲧;->㧦:I

    iput-object p1, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    new-instance v0, L㚬/䂻/ბ/㫏;

    invoke-direct {v0, p1}, L㚬/䂻/ბ/㫏;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    return-void
.end method

.method public static 㺴(Landroid/content/Context;L㚬/䂻/ბ/ಫ;I)L㚬/䂻/ბ/ᭊ;
    .locals 0

    invoke-virtual {p1, p0, p2}, L㚬/䂻/ბ/ಫ;->䆀(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, L㚬/䂻/ბ/ᭊ;

    invoke-direct {p1}, L㚬/䂻/ბ/ᭊ;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, L㚬/䂻/ბ/ᭊ;->㺴:Z

    iput-object p0, p1, L㚬/䂻/ბ/ᭊ;->உ:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ڈ(Landroid/content/Context;L㚬/䂻/ბ/ᣝ;)V
    .locals 9

    sget v0, L㚬/䂻/ಫ;->Ձ:I

    iget v1, p0, L㚬/䂻/ბ/㲧;->ಫ:I

    invoke-virtual {p2, v0, v1}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v0

    iput v0, p0, L㚬/䂻/ბ/㲧;->ಫ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_0

    sget v5, L㚬/䂻/ಫ;->䃤:I

    invoke-virtual {p2, v5, v3}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v5

    iput v5, p0, L㚬/䂻/ბ/㲧;->㧦:I

    if-eq v5, v3, :cond_0

    iget v5, p0, L㚬/䂻/ბ/㲧;->ಫ:I

    and-int/2addr v5, v2

    or-int/2addr v5, v4

    iput v5, p0, L㚬/䂻/ბ/㲧;->ಫ:I

    :cond_0
    sget v5, L㚬/䂻/ಫ;->㷵:I

    invoke-virtual {p2, v5}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_6

    sget v6, L㚬/䂻/ಫ;->ℭ:I

    invoke-virtual {p2, v6}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    sget p1, L㚬/䂻/ಫ;->ḑ:I

    invoke-virtual {p2, p1}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v4, p0, L㚬/䂻/ბ/㲧;->ἥ:Z

    invoke-virtual {p2, p1, v7}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result p1

    if-eq p1, v7, :cond_4

    if-eq p1, v2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    iput-object p1, p0, L㚬/䂻/ბ/㲧;->㹖:Landroid/graphics/Typeface;

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const/4 v6, 0x0

    iput-object v6, p0, L㚬/䂻/ბ/㲧;->㹖:Landroid/graphics/Typeface;

    sget v6, L㚬/䂻/ಫ;->ℭ:I

    invoke-virtual {p2, v6}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v8

    if-eqz v8, :cond_7

    move v5, v6

    :cond_7
    iget v6, p0, L㚬/䂻/ბ/㲧;->㧦:I

    iget v8, p0, L㚬/䂻/ბ/㲧;->ಫ:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, L㚬/䂻/ბ/㲧$உ;

    invoke-direct {p1, p0, v6, v8}, L㚬/䂻/ბ/㲧$உ;-><init>(L㚬/䂻/ბ/㲧;II)V

    :try_start_0
    iget v6, p0, L㚬/䂻/ბ/㲧;->ಫ:I

    invoke-virtual {p2, v5, v6, p1}, L㚬/䂻/ბ/ᣝ;->ಫ(IIL㚬/ℓ/ḓ/㚬/䆀$உ;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    if-lt v0, v1, :cond_9

    iget v0, p0, L㚬/䂻/ბ/㲧;->㧦:I

    if-eq v0, v3, :cond_9

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v0, p0, L㚬/䂻/ბ/㲧;->㧦:I

    iget v6, p0, L㚬/䂻/ბ/㲧;->ಫ:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :goto_3
    invoke-static {p1, v0, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_9
    iput-object p1, p0, L㚬/䂻/ბ/㲧;->㹖:Landroid/graphics/Typeface;

    :cond_a
    iget-object p1, p0, L㚬/䂻/ბ/㲧;->㹖:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, p0, L㚬/䂻/ბ/㲧;->ἥ:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    :cond_c
    :goto_5
    iget-object p1, p0, L㚬/䂻/ბ/㲧;->㹖:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    invoke-virtual {p2, v5}, L㚬/䂻/ბ/ᣝ;->ᓭ(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_e

    iget p2, p0, L㚬/䂻/ბ/㲧;->㧦:I

    if-eq p2, v3, :cond_e

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, L㚬/䂻/ბ/㲧;->㧦:I

    iget v0, p0, L㚬/䂻/ბ/㲧;->ಫ:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    const/4 v4, 0x1

    :cond_d
    invoke-static {p1, p2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_6

    :cond_e
    iget p2, p0, L㚬/䂻/ბ/㲧;->ಫ:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_6
    iput-object p1, p0, L㚬/䂻/ბ/㲧;->㹖:Landroid/graphics/Typeface;

    :cond_f
    return-void
.end method

.method public final உ(Landroid/graphics/drawable/Drawable;L㚬/䂻/ბ/ᭊ;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, L㚬/䂻/ბ/ಫ;->ㄏ(Landroid/graphics/drawable/Drawable;L㚬/䂻/ბ/ᭊ;[I)V

    :cond_0
    return-void
.end method

.method public final ಋ(IF)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v0, p1, p2}, L㚬/䂻/ბ/㫏;->ㄬ(IF)V

    return-void
.end method

.method public ಫ()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ℓ:L㚬/䂻/ბ/ᭊ;

    if-eqz v0, :cond_0

    iget-object v0, v0, L㚬/䂻/ბ/ᭊ;->உ:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public ม(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ℓ:L㚬/䂻/ბ/ᭊ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ბ/ᭊ;

    invoke-direct {v0}, L㚬/䂻/ბ/ᭊ;-><init>()V

    iput-object v0, p0, L㚬/䂻/ბ/㲧;->ℓ:L㚬/䂻/ბ/ᭊ;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ℓ:L㚬/䂻/ბ/ᭊ;

    iput-object p1, v0, L㚬/䂻/ბ/ᭊ;->䂻:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, L㚬/䂻/ბ/ᭊ;->㚬:Z

    invoke-virtual {p0}, L㚬/䂻/ბ/㲧;->ㄬ()V

    return-void
.end method

.method public ཇ(ZIIII)V
    .locals 0

    sget-boolean p1, L㚬/ℓ/ཇ/䂻;->உ:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ბ/㲧;->㚬()V

    :cond_0
    return-void
.end method

.method public ბ(Landroid/content/Context;I)V
    .locals 4

    sget-object v0, L㚬/䂻/ಫ;->ᓓ:[I

    invoke-static {p1, p2, v0}, L㚬/䂻/ბ/ᣝ;->㭲(Landroid/content/Context;I[I)L㚬/䂻/ბ/ᣝ;

    move-result-object p2

    sget v0, L㚬/䂻/ಫ;->ᨁ:I

    invoke-virtual {p2, v0}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0, v2}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, L㚬/䂻/ბ/㲧;->㞘(Z)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    sget v1, L㚬/䂻/ಫ;->ᵹ:I

    invoke-virtual {p2, v1}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2, v1}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    sget v1, L㚬/䂻/ಫ;->䃆:I

    invoke-virtual {p2, v1}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, L㚬/䂻/ბ/ᣝ;->䆀(II)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    invoke-virtual {p0, p1, p2}, L㚬/䂻/ბ/㲧;->ڈ(Landroid/content/Context;L㚬/䂻/ბ/ᣝ;)V

    const/16 p1, 0x1a

    if-lt v0, p1, :cond_3

    sget p1, L㚬/䂻/ಫ;->䉁:I

    invoke-virtual {p2, p1}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, L㚬/䂻/ბ/ᣝ;->ᓭ(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_3
    invoke-virtual {p2}, L㚬/䂻/ბ/ᣝ;->㢏()V

    iget-object p1, p0, L㚬/䂻/ბ/㲧;->㹖:Landroid/graphics/Typeface;

    if-eqz p1, :cond_4

    iget-object p2, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    iget v0, p0, L㚬/䂻/ბ/㲧;->ಫ:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_4
    return-void
.end method

.method public ᆻ()I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v0}, L㚬/䂻/ბ/㫏;->㹖()I

    move-result v0

    return v0
.end method

.method public ᓭ()V
    .locals 0

    invoke-virtual {p0}, L㚬/䂻/ბ/㲧;->䂻()V

    return-void
.end method

.method public ḓ()I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v0}, L㚬/䂻/ბ/㫏;->ಫ()I

    move-result v0

    return v0
.end method

.method public ḙ([II)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v0, p1, p2}, L㚬/䂻/ბ/㫏;->㢏([II)V

    return-void
.end method

.method public ἥ(Landroid/util/AttributeSet;I)V
    .locals 23
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    iget-object v2, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, L㚬/䂻/ბ/ಫ;->䂻()L㚬/䂻/ბ/ಫ;

    move-result-object v3

    sget-object v4, L㚬/䂻/ಫ;->ᣝ:[I

    const/4 v5, 0x0

    invoke-static {v2, v0, v4, v1, v5}, L㚬/䂻/ბ/ᣝ;->㖪(Landroid/content/Context;Landroid/util/AttributeSet;[III)L㚬/䂻/ბ/ᣝ;

    move-result-object v4

    sget v6, L㚬/䂻/ಫ;->ᇿ:I

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v8}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v6

    sget v9, L㚬/䂻/ಫ;->ᘚ:I

    invoke-virtual {v4, v9}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v4, v9, v5}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v9

    invoke-static {v2, v3, v9}, L㚬/䂻/ბ/㲧;->㺴(Landroid/content/Context;L㚬/䂻/ბ/ಫ;I)L㚬/䂻/ბ/ᭊ;

    move-result-object v9

    iput-object v9, v7, L㚬/䂻/ბ/㲧;->䂻:L㚬/䂻/ბ/ᭊ;

    :cond_0
    sget v9, L㚬/䂻/ಫ;->ᣑ:I

    invoke-virtual {v4, v9}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v4, v9, v5}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v9

    invoke-static {v2, v3, v9}, L㚬/䂻/ბ/㲧;->㺴(Landroid/content/Context;L㚬/䂻/ბ/ಫ;I)L㚬/䂻/ბ/ᭊ;

    move-result-object v9

    iput-object v9, v7, L㚬/䂻/ბ/㲧;->㚬:L㚬/䂻/ბ/ᭊ;

    :cond_1
    sget v9, L㚬/䂻/ಫ;->ᣦ:I

    invoke-virtual {v4, v9}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v4, v9, v5}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v9

    invoke-static {v2, v3, v9}, L㚬/䂻/ბ/㲧;->㺴(Landroid/content/Context;L㚬/䂻/ბ/ಫ;I)L㚬/䂻/ბ/ᭊ;

    move-result-object v9

    iput-object v9, v7, L㚬/䂻/ბ/㲧;->㺴:L㚬/䂻/ბ/ᭊ;

    :cond_2
    sget v9, L㚬/䂻/ಫ;->㲊:I

    invoke-virtual {v4, v9}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v4, v9, v5}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v9

    invoke-static {v2, v3, v9}, L㚬/䂻/ბ/㲧;->㺴(Landroid/content/Context;L㚬/䂻/ბ/ಫ;I)L㚬/䂻/ბ/ᭊ;

    move-result-object v9

    iput-object v9, v7, L㚬/䂻/ბ/㲧;->ḓ:L㚬/䂻/ბ/ᭊ;

    :cond_3
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_5

    sget v10, L㚬/䂻/ಫ;->㽛:I

    invoke-virtual {v4, v10}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v4, v10, v5}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v10

    invoke-static {v2, v3, v10}, L㚬/䂻/ბ/㲧;->㺴(Landroid/content/Context;L㚬/䂻/ბ/ಫ;I)L㚬/䂻/ბ/ᭊ;

    move-result-object v10

    iput-object v10, v7, L㚬/䂻/ბ/㲧;->䆀:L㚬/䂻/ბ/ᭊ;

    :cond_4
    sget v10, L㚬/䂻/ಫ;->ಇ:I

    invoke-virtual {v4, v10}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v4, v10, v5}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v10

    invoke-static {v2, v3, v10}, L㚬/䂻/ბ/㲧;->㺴(Landroid/content/Context;L㚬/䂻/ბ/ಫ;I)L㚬/䂻/ბ/ᭊ;

    move-result-object v10

    iput-object v10, v7, L㚬/䂻/ბ/㲧;->ᆻ:L㚬/䂻/ბ/ᭊ;

    :cond_5
    invoke-virtual {v4}, L㚬/䂻/ბ/ᣝ;->㢏()V

    iget-object v4, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    const/16 v10, 0x1a

    const/16 v12, 0x17

    if-eq v6, v8, :cond_d

    sget-object v14, L㚬/䂻/ಫ;->ᓓ:[I

    invoke-static {v2, v6, v14}, L㚬/䂻/ბ/ᣝ;->㭲(Landroid/content/Context;I[I)L㚬/䂻/ბ/ᣝ;

    move-result-object v6

    if-nez v4, :cond_6

    sget v14, L㚬/䂻/ಫ;->ᨁ:I

    invoke-virtual {v6, v14}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v6, v14, v5}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v14

    const/4 v15, 0x1

    goto :goto_0

    :cond_6
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v7, v2, v6}, L㚬/䂻/ბ/㲧;->ڈ(Landroid/content/Context;L㚬/䂻/ბ/ᣝ;)V

    if-ge v9, v12, :cond_a

    sget v11, L㚬/䂻/ಫ;->ᵹ:I

    invoke-virtual {v6, v11}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v6, v11}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    :goto_1
    sget v13, L㚬/䂻/ಫ;->Ḣ:I

    invoke-virtual {v6, v13}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v6, v13}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    :goto_2
    sget v8, L㚬/䂻/ಫ;->㦗:I

    invoke-virtual {v6, v8}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-virtual {v6, v8}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_3
    sget v12, L㚬/䂻/ಫ;->ᐇ:I

    invoke-virtual {v6, v12}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-virtual {v6, v12}, L㚬/䂻/ბ/ᣝ;->ᓭ(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_b
    const/4 v12, 0x0

    :goto_4
    if-lt v9, v10, :cond_c

    sget v10, L㚬/䂻/ಫ;->䉁:I

    invoke-virtual {v6, v10}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-virtual {v6, v10}, L㚬/䂻/ბ/ᣝ;->ᓭ(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_c
    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v6}, L㚬/䂻/ბ/ᣝ;->㢏()V

    goto :goto_6

    :cond_d
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_6
    sget-object v6, L㚬/䂻/ಫ;->ᓓ:[I

    invoke-static {v2, v0, v6, v1, v5}, L㚬/䂻/ბ/ᣝ;->㖪(Landroid/content/Context;Landroid/util/AttributeSet;[III)L㚬/䂻/ბ/ᣝ;

    move-result-object v6

    if-nez v4, :cond_e

    sget v5, L㚬/䂻/ಫ;->ᨁ:I

    invoke-virtual {v6, v5}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v22

    if-eqz v22, :cond_e

    move-object/from16 v22, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, L㚬/䂻/ბ/ᣝ;->உ(IZ)Z

    move-result v14

    const/16 v5, 0x17

    const/4 v15, 0x1

    goto :goto_7

    :cond_e
    move-object/from16 v22, v8

    const/16 v5, 0x17

    :goto_7
    if-ge v9, v5, :cond_11

    sget v5, L㚬/䂻/ಫ;->ᵹ:I

    invoke-virtual {v6, v5}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v6, v5}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    :cond_f
    sget v5, L㚬/䂻/ಫ;->Ḣ:I

    invoke-virtual {v6, v5}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v6, v5}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    :cond_10
    sget v5, L㚬/䂻/ಫ;->㦗:I

    invoke-virtual {v6, v5}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v6, v5}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    goto :goto_8

    :cond_11
    move-object/from16 v8, v22

    :goto_8
    sget v5, L㚬/䂻/ಫ;->ᐇ:I

    invoke-virtual {v6, v5}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v16

    if-eqz v16, :cond_12

    invoke-virtual {v6, v5}, L㚬/䂻/ბ/ᣝ;->ᓭ(I)Ljava/lang/String;

    move-result-object v12

    :cond_12
    const/16 v5, 0x1a

    if-lt v9, v5, :cond_13

    sget v5, L㚬/䂻/ಫ;->䉁:I

    invoke-virtual {v6, v5}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-virtual {v6, v5}, L㚬/䂻/ბ/ᣝ;->ᓭ(I)Ljava/lang/String;

    move-result-object v10

    :cond_13
    const/16 v5, 0x1c

    if-lt v9, v5, :cond_14

    sget v5, L㚬/䂻/ಫ;->䃆:I

    invoke-virtual {v6, v5}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v16

    if-eqz v16, :cond_14

    move-object/from16 v16, v3

    const/4 v3, -0x1

    invoke-virtual {v6, v5, v3}, L㚬/䂻/ბ/ᣝ;->䆀(II)I

    move-result v5

    if-nez v5, :cond_15

    iget-object v3, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_9

    :cond_14
    move-object/from16 v16, v3

    :cond_15
    :goto_9
    invoke-virtual {v7, v2, v6}, L㚬/䂻/ბ/㲧;->ڈ(Landroid/content/Context;L㚬/䂻/ბ/ᣝ;)V

    invoke-virtual {v6}, L㚬/䂻/ბ/ᣝ;->㢏()V

    if-eqz v11, :cond_16

    iget-object v0, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_16
    if-eqz v13, :cond_17

    iget-object v0, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_17
    if-eqz v8, :cond_18

    iget-object v0, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_18
    if-nez v4, :cond_19

    if-eqz v15, :cond_19

    invoke-virtual {v7, v14}, L㚬/䂻/ბ/㲧;->㞘(Z)V

    :cond_19
    iget-object v0, v7, L㚬/䂻/ბ/㲧;->㹖:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1b

    iget v3, v7, L㚬/䂻/ბ/㲧;->㧦:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    iget-object v3, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    iget v4, v7, L㚬/䂻/ბ/㲧;->ಫ:I

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_a

    :cond_1a
    iget-object v3, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1b
    :goto_a
    if-eqz v10, :cond_1c

    iget-object v0, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_1c
    if-eqz v12, :cond_1e

    const/16 v0, 0x18

    if-lt v9, v0, :cond_1d

    iget-object v0, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-static {v12}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    goto :goto_b

    :cond_1d
    const/16 v0, 0x15

    if-lt v9, v0, :cond_1e

    const/16 v0, 0x2c

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    :cond_1e
    :goto_b
    iget-object v0, v7, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v1}, L㚬/䂻/ბ/㫏;->ḙ(Landroid/util/AttributeSet;I)V

    sget-boolean v0, L㚬/ℓ/ཇ/䂻;->உ:Z

    if-eqz v0, :cond_20

    iget-object v0, v7, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v0}, L㚬/䂻/ბ/㫏;->ཇ()I

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v7, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v0}, L㚬/䂻/ბ/㫏;->ἥ()[I

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_20

    iget-object v1, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1f

    iget-object v0, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    iget-object v1, v7, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v1}, L㚬/䂻/ბ/㫏;->㧦()I

    move-result v1

    iget-object v4, v7, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v4}, L㚬/䂻/ბ/㫏;->ಫ()I

    move-result v4

    iget-object v5, v7, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v5}, L㚬/䂻/ბ/㫏;->㹖()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_c

    :cond_1f
    const/4 v6, 0x0

    iget-object v1, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_20
    :goto_c
    sget-object v0, L㚬/䂻/ಫ;->Ổ:[I

    invoke-static {v2, v3, v0}, L㚬/䂻/ბ/ᣝ;->ḙ(Landroid/content/Context;Landroid/util/AttributeSet;[I)L㚬/䂻/ბ/ᣝ;

    move-result-object v8

    sget v0, L㚬/䂻/ಫ;->क:I

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v0

    move-object/from16 v3, v16

    if-eq v0, v1, :cond_21

    invoke-virtual {v3, v2, v0}, L㚬/䂻/ბ/ಫ;->㚬(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_d

    :cond_21
    const/4 v4, 0x0

    :goto_d
    sget v0, L㚬/䂻/ಫ;->ᨧ:I

    invoke-virtual {v8, v0, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v0

    if-eq v0, v1, :cond_22

    invoke-virtual {v3, v2, v0}, L㚬/䂻/ბ/ಫ;->㚬(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    goto :goto_e

    :cond_22
    const/4 v5, 0x0

    :goto_e
    sget v0, L㚬/䂻/ಫ;->ⷜ:I

    invoke-virtual {v8, v0, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v0

    if-eq v0, v1, :cond_23

    invoke-virtual {v3, v2, v0}, L㚬/䂻/ბ/ಫ;->㚬(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    goto :goto_f

    :cond_23
    const/4 v6, 0x0

    :goto_f
    sget v0, L㚬/䂻/ಫ;->䆍:I

    invoke-virtual {v8, v0, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v0

    if-eq v0, v1, :cond_24

    invoke-virtual {v3, v2, v0}, L㚬/䂻/ბ/ಫ;->㚬(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto :goto_10

    :cond_24
    const/4 v9, 0x0

    :goto_10
    sget v0, L㚬/䂻/ಫ;->䃻:I

    invoke-virtual {v8, v0, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v0

    if-eq v0, v1, :cond_25

    invoke-virtual {v3, v2, v0}, L㚬/䂻/ბ/ಫ;->㚬(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v10, v0

    goto :goto_11

    :cond_25
    const/4 v10, 0x0

    :goto_11
    sget v0, L㚬/䂻/ಫ;->ⶬ:I

    invoke-virtual {v8, v0, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result v0

    if-eq v0, v1, :cond_26

    invoke-virtual {v3, v2, v0}, L㚬/䂻/ბ/ಫ;->㚬(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v11, v0

    goto :goto_12

    :cond_26
    const/4 v11, 0x0

    :goto_12
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, L㚬/䂻/ბ/㲧;->㲧(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget v0, L㚬/䂻/ಫ;->ᗼ:I

    invoke-virtual {v8, v0}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v8, v0}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-static {v1, v0}, L㚬/ℓ/ཇ/ㄏ;->ᆻ(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    :cond_27
    sget v0, L㚬/䂻/ಫ;->ϣ:I

    invoke-virtual {v8, v0}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, L㚬/䂻/ბ/㰫;->㺴(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iget-object v2, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-static {v2, v0}, L㚬/ℓ/ཇ/ㄏ;->ℓ(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_13

    :cond_28
    const/4 v1, -0x1

    :goto_13
    sget v0, L㚬/䂻/ಫ;->ਬ:I

    invoke-virtual {v8, v0, v1}, L㚬/䂻/ბ/ᣝ;->䆀(II)I

    move-result v0

    sget v2, L㚬/䂻/ಫ;->Ꭿ:I

    invoke-virtual {v8, v2, v1}, L㚬/䂻/ბ/ᣝ;->䆀(II)I

    move-result v2

    sget v3, L㚬/䂻/ಫ;->ध:I

    invoke-virtual {v8, v3, v1}, L㚬/䂻/ბ/ᣝ;->䆀(II)I

    move-result v3

    invoke-virtual {v8}, L㚬/䂻/ბ/ᣝ;->㢏()V

    if-eq v0, v1, :cond_29

    iget-object v4, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-static {v4, v0}, L㚬/ℓ/ཇ/ㄏ;->ಫ(Landroid/widget/TextView;I)V

    :cond_29
    if-eq v2, v1, :cond_2a

    iget-object v0, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-static {v0, v2}, L㚬/ℓ/ཇ/ㄏ;->㧦(Landroid/widget/TextView;I)V

    :cond_2a
    if-eq v3, v1, :cond_2b

    iget-object v0, v7, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-static {v0, v3}, L㚬/ℓ/ཇ/ㄏ;->㹖(Landroid/widget/TextView;I)V

    :cond_2b
    return-void
.end method

.method public ᾦ(Landroid/graphics/Typeface;)V
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ბ/㲧;->ἥ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object p1, p0, L㚬/䂻/ბ/㲧;->㹖:Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method public ℓ()[I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v0}, L㚬/䂻/ბ/㫏;->ἥ()[I

    move-result-object v0

    return-object v0
.end method

.method public ㄏ()I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v0}, L㚬/䂻/ბ/㫏;->ཇ()I

    move-result v0

    return v0
.end method

.method public final ㄬ()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ℓ:L㚬/䂻/ბ/ᭊ;

    iput-object v0, p0, L㚬/䂻/ბ/㲧;->䂻:L㚬/䂻/ბ/ᭊ;

    iput-object v0, p0, L㚬/䂻/ბ/㲧;->㚬:L㚬/䂻/ბ/ᭊ;

    iput-object v0, p0, L㚬/䂻/ბ/㲧;->㺴:L㚬/䂻/ბ/ᭊ;

    iput-object v0, p0, L㚬/䂻/ბ/㲧;->ḓ:L㚬/䂻/ბ/ᭊ;

    iput-object v0, p0, L㚬/䂻/ბ/㲧;->䆀:L㚬/䂻/ბ/ᭊ;

    iput-object v0, p0, L㚬/䂻/ბ/㲧;->ᆻ:L㚬/䂻/ბ/ᭊ;

    return-void
.end method

.method public 㖪(I)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/㫏;->ม(I)V

    return-void
.end method

.method public 㚬()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v0}, L㚬/䂻/ბ/㫏;->䂻()V

    return-void
.end method

.method public 㞘(Z)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method public 㢏(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ℓ:L㚬/䂻/ბ/ᭊ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ბ/ᭊ;

    invoke-direct {v0}, L㚬/䂻/ბ/ᭊ;-><init>()V

    iput-object v0, p0, L㚬/䂻/ბ/㲧;->ℓ:L㚬/䂻/ბ/ᭊ;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ℓ:L㚬/䂻/ბ/ᭊ;

    iput-object p1, v0, L㚬/䂻/ბ/ᭊ;->உ:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, L㚬/䂻/ბ/ᭊ;->㺴:Z

    invoke-virtual {p0}, L㚬/䂻/ბ/㲧;->ㄬ()V

    return-void
.end method

.method public 㧦()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ℓ:L㚬/䂻/ბ/ᭊ;

    if-eqz v0, :cond_0

    iget-object v0, v0, L㚬/䂻/ბ/ᭊ;->䂻:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public 㫏(IF)V
    .locals 1

    sget-boolean v0, L㚬/ℓ/ཇ/䂻;->உ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ბ/㲧;->㹖()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, L㚬/䂻/ბ/㲧;->ಋ(IF)V

    :cond_0
    return-void
.end method

.method public 㭲(IIII)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v0, p1, p2, p3, p4}, L㚬/䂻/ბ/㫏;->㖪(IIII)V

    return-void
.end method

.method public 㲝(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final 㲧(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt v0, v1, :cond_5

    if-nez p5, :cond_0

    if-eqz p6, :cond_5

    :cond_0
    iget-object p1, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p3, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    aget-object p5, p1, v5

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    aget-object p2, p1, v3

    :goto_1
    if-eqz p6, :cond_3

    goto :goto_2

    :cond_3
    aget-object p6, p1, v4

    :goto_2
    if-eqz p4, :cond_4

    goto :goto_3

    :cond_4
    aget-object p4, p1, v2

    :goto_3
    invoke-virtual {p3, p5, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_f

    :cond_6
    if-lt v0, v1, :cond_a

    iget-object p5, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    aget-object p6, p5, v5

    if-nez p6, :cond_7

    aget-object p6, p5, v4

    if-eqz p6, :cond_a

    :cond_7
    iget-object p1, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    aget-object p3, p5, v5

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    aget-object p2, p5, v3

    :goto_4
    aget-object p6, p5, v4

    if-eqz p4, :cond_9

    goto :goto_5

    :cond_9
    aget-object p4, p5, v2

    :goto_5
    invoke-virtual {p1, p3, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_a
    iget-object p5, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    iget-object p6, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    aget-object p1, p5, v5

    :goto_6
    if-eqz p2, :cond_c

    goto :goto_7

    :cond_c
    aget-object p2, p5, v3

    :goto_7
    if-eqz p3, :cond_d

    goto :goto_8

    :cond_d
    aget-object p3, p5, v4

    :goto_8
    if-eqz p4, :cond_e

    goto :goto_9

    :cond_e
    aget-object p4, p5, v2

    :goto_9
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_a
    return-void
.end method

.method public 㹖()Z
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v0}, L㚬/䂻/ბ/㫏;->㭲()Z

    move-result v0

    return v0
.end method

.method public 䂻()V
    .locals 5

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->䂻:L㚬/䂻/ბ/ᭊ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->㚬:L㚬/䂻/ბ/ᭊ;

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->㺴:L㚬/䂻/ბ/ᭊ;

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ḓ:L㚬/䂻/ბ/ᭊ;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v3, v0, v2

    iget-object v4, p0, L㚬/䂻/ბ/㲧;->䂻:L㚬/䂻/ბ/ᭊ;

    invoke-virtual {p0, v3, v4}, L㚬/䂻/ბ/㲧;->உ(Landroid/graphics/drawable/Drawable;L㚬/䂻/ბ/ᭊ;)V

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, L㚬/䂻/ბ/㲧;->㚬:L㚬/䂻/ბ/ᭊ;

    invoke-virtual {p0, v3, v4}, L㚬/䂻/ბ/㲧;->உ(Landroid/graphics/drawable/Drawable;L㚬/䂻/ბ/ᭊ;)V

    aget-object v3, v0, v1

    iget-object v4, p0, L㚬/䂻/ბ/㲧;->㺴:L㚬/䂻/ბ/ᭊ;

    invoke-virtual {p0, v3, v4}, L㚬/䂻/ბ/㲧;->உ(Landroid/graphics/drawable/Drawable;L㚬/䂻/ბ/ᭊ;)V

    const/4 v3, 0x3

    aget-object v0, v0, v3

    iget-object v3, p0, L㚬/䂻/ბ/㲧;->ḓ:L㚬/䂻/ბ/ᭊ;

    invoke-virtual {p0, v0, v3}, L㚬/䂻/ბ/㲧;->உ(Landroid/graphics/drawable/Drawable;L㚬/䂻/ბ/ᭊ;)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->䆀:L㚬/䂻/ბ/ᭊ;

    if-nez v0, :cond_2

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ᆻ:L㚬/䂻/ბ/ᭊ;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, L㚬/䂻/ბ/㲧;->உ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, L㚬/䂻/ბ/㲧;->䆀:L㚬/䂻/ბ/ᭊ;

    invoke-virtual {p0, v2, v3}, L㚬/䂻/ბ/㲧;->உ(Landroid/graphics/drawable/Drawable;L㚬/䂻/ბ/ᭊ;)V

    aget-object v0, v0, v1

    iget-object v1, p0, L㚬/䂻/ბ/㲧;->ᆻ:L㚬/䂻/ბ/ᭊ;

    invoke-virtual {p0, v0, v1}, L㚬/䂻/ბ/㲧;->உ(Landroid/graphics/drawable/Drawable;L㚬/䂻/ბ/ᭊ;)V

    :cond_3
    return-void
.end method

.method public 䆀()I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㲧;->ㄏ:L㚬/䂻/ბ/㫏;

    invoke-virtual {v0}, L㚬/䂻/ბ/㫏;->㧦()I

    move-result v0

    return v0
.end method
