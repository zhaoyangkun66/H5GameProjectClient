.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(L㚬/㢏/உ;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 3

    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    invoke-direct {v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->உ:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->ბ(II)I

    move-result v1

    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->உ:I

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->㚬:[B

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->ಫ([BI)[B

    move-result-object v1

    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->㚬:[B

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->㺴:Landroid/os/Parcelable;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->㞘(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->㺴:Landroid/os/Parcelable;

    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->ḓ:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->ბ(II)I

    move-result v1

    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->ḓ:I

    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->䆀:I

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->ბ(II)I

    move-result v1

    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->䆀:I

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->ᆻ:Landroid/content/res/ColorStateList;

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->㞘(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->ᆻ:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->ㄏ:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, L㚬/㢏/உ;->ḙ(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->ㄏ:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->ḓ()V

    return-object v0
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;L㚬/㢏/உ;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, L㚬/㢏/உ;->㲧(ZZ)V

    invoke-virtual {p1}, L㚬/㢏/உ;->䆀()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->䆀(Z)V

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->உ:I

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    invoke-virtual {p1, v1, v0}, L㚬/㢏/உ;->㨃(II)V

    :cond_0
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->㚬:[B

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, L㚬/㢏/உ;->ᾦ([BI)V

    :cond_1
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->㺴:Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, L㚬/㢏/உ;->ᱹ(Landroid/os/Parcelable;I)V

    :cond_2
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->ḓ:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, L㚬/㢏/உ;->㨃(II)V

    :cond_3
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->䆀:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, L㚬/㢏/உ;->㨃(II)V

    :cond_4
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->ᆻ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, L㚬/㢏/உ;->ᱹ(Landroid/os/Parcelable;I)V

    :cond_5
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->ㄏ:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p1, p0, v0}, L㚬/㢏/உ;->ർ(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method
