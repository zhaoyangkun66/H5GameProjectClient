.class public final L㚬/䂻/ბ/ಫ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/䂻/ბ/㭢$ḓ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/䂻/ბ/ಫ;->ℓ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final உ:[I

.field public final ḓ:[I

.field public final 㚬:[I

.field public final 㺴:[I

.field public final 䂻:[I

.field public final 䆀:[I


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    sget v2, L㚬/䂻/ḓ;->ⵦ:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, L㚬/䂻/ḓ;->㮕:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, L㚬/䂻/ḓ;->உ:I

    const/4 v5, 0x2

    aput v2, v1, v5

    iput-object v1, p0, L㚬/䂻/ბ/ಫ$உ;->உ:[I

    const/4 v1, 0x7

    new-array v2, v1, [I

    sget v6, L㚬/䂻/ḓ;->ᓭ:I

    aput v6, v2, v3

    sget v6, L㚬/䂻/ḓ;->ᾦ:I

    aput v6, v2, v4

    sget v6, L㚬/䂻/ḓ;->ḙ:I

    aput v6, v2, v5

    sget v6, L㚬/䂻/ḓ;->ბ:I

    aput v6, v2, v0

    sget v6, L㚬/䂻/ḓ;->㲝:I

    const/4 v7, 0x4

    aput v6, v2, v7

    sget v6, L㚬/䂻/ḓ;->㭲:I

    const/4 v8, 0x5

    aput v6, v2, v8

    sget v6, L㚬/䂻/ḓ;->㞘:I

    const/4 v9, 0x6

    aput v6, v2, v9

    iput-object v2, p0, L㚬/䂻/ბ/ಫ$உ;->䂻:[I

    const/16 v2, 0xa

    new-array v2, v2, [I

    sget v6, L㚬/䂻/ḓ;->䅚:I

    aput v6, v2, v3

    sget v6, L㚬/䂻/ḓ;->ἂ:I

    aput v6, v2, v4

    sget v6, L㚬/䂻/ḓ;->㧦:I

    aput v6, v2, v5

    sget v6, L㚬/䂻/ḓ;->㥁:I

    aput v6, v2, v0

    sget v6, L㚬/䂻/ḓ;->ർ:I

    aput v6, v2, v7

    sget v6, L㚬/䂻/ḓ;->㭢:I

    aput v6, v2, v8

    sget v6, L㚬/䂻/ḓ;->Ԁ:I

    aput v6, v2, v9

    sget v6, L㚬/䂻/ḓ;->㖆:I

    aput v6, v2, v1

    sget v1, L㚬/䂻/ḓ;->Խ:I

    const/16 v6, 0x8

    aput v1, v2, v6

    sget v1, L㚬/䂻/ḓ;->ỷ:I

    const/16 v6, 0x9

    aput v1, v2, v6

    iput-object v2, p0, L㚬/䂻/ბ/ಫ$உ;->㚬:[I

    new-array v1, v0, [I

    sget v2, L㚬/䂻/ḓ;->ม:I

    aput v2, v1, v3

    sget v2, L㚬/䂻/ḓ;->ㄏ:I

    aput v2, v1, v4

    sget v2, L㚬/䂻/ḓ;->㢏:I

    aput v2, v1, v5

    iput-object v1, p0, L㚬/䂻/ბ/ಫ$உ;->㺴:[I

    new-array v1, v5, [I

    sget v2, L㚬/䂻/ḓ;->ᱹ:I

    aput v2, v1, v3

    sget v2, L㚬/䂻/ḓ;->ᭊ:I

    aput v2, v1, v4

    iput-object v1, p0, L㚬/䂻/ბ/ಫ$உ;->ḓ:[I

    new-array v1, v7, [I

    sget v2, L㚬/䂻/ḓ;->㚬:I

    aput v2, v1, v3

    sget v2, L㚬/䂻/ḓ;->ᆻ:I

    aput v2, v1, v4

    sget v2, L㚬/䂻/ḓ;->㺴:I

    aput v2, v1, v5

    sget v2, L㚬/䂻/ḓ;->ℓ:I

    aput v2, v1, v0

    iput-object v1, p0, L㚬/䂻/ბ/ಫ$உ;->䆀:[I

    return-void
.end method


# virtual methods
.method public உ(L㚬/䂻/ბ/㭢;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    sget v0, L㚬/䂻/ḓ;->ಫ:I

    if-ne p3, v0, :cond_0

    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    sget v2, L㚬/䂻/ḓ;->ㄏ:I

    invoke-virtual {p1, p2, v2}, L㚬/䂻/ბ/㭢;->ಫ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, L㚬/䂻/ḓ;->㧦:I

    invoke-virtual {p1, p2, v2}, L㚬/䂻/ბ/㭢;->ಫ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p3, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p3

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ಫ(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    sget v0, L㚬/䂻/உ;->ḙ:I

    invoke-static {p1, v0}, L㚬/䂻/ბ/㮕;->䂻(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, L㚬/䂻/ბ/ಫ$உ;->ℓ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public final ᆻ(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, L㚬/䂻/ბ/ಫ$உ;->ℓ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public ḓ(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    sget v0, L㚬/䂻/ḓ;->㨃:I

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final ℓ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget v2, L㚬/䂻/உ;->㢏:I

    invoke-static {p1, v2}, L㚬/䂻/ბ/㮕;->䂻(Landroid/content/Context;I)I

    move-result v2

    sget v3, L㚬/䂻/உ;->ḙ:I

    invoke-static {p1, v3}, L㚬/䂻/ბ/㮕;->உ(Landroid/content/Context;I)I

    move-result p1

    sget-object v3, L㚬/䂻/ბ/㮕;->䂻:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p1, v0, v4

    sget-object p1, L㚬/䂻/ბ/㮕;->㺴:[I

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v2, p2}, L㚬/ℓ/䆀/உ;->䂻(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, L㚬/䂻/ბ/㮕;->㚬:[I

    const/4 v3, 0x2

    aput-object p1, v1, v3

    invoke-static {v2, p2}, L㚬/ℓ/䆀/உ;->䂻(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, L㚬/䂻/ბ/㮕;->䆀:[I

    const/4 v2, 0x3

    aput-object p1, v1, v2

    aput p2, v0, v2

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public final ㄏ(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    sget v0, L㚬/䂻/உ;->㭲:I

    invoke-static {p1, v0}, L㚬/䂻/ბ/㮕;->䂻(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, L㚬/䂻/ბ/ಫ$உ;->ℓ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public 㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    sget v0, L㚬/䂻/ḓ;->ἥ:I

    if-ne p2, v0, :cond_0

    sget p2, L㚬/䂻/㚬;->㺴:I

    invoke-static {p1, p2}, L㚬/䂻/㹖/உ/உ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_0
    sget v0, L㚬/䂻/ḓ;->ᰘ:I

    if-ne p2, v0, :cond_1

    sget p2, L㚬/䂻/㚬;->ᆻ:I

    invoke-static {p1, p2}, L㚬/䂻/㹖/உ/உ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_1
    sget v0, L㚬/䂻/ḓ;->㨃:I

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ಫ$உ;->㧦(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_2
    sget v0, L㚬/䂻/ḓ;->䆀:I

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ಫ$உ;->ಫ(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_3
    sget v0, L㚬/䂻/ḓ;->䂻:I

    if-ne p2, v0, :cond_4

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ಫ$உ;->ᆻ(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_4
    sget v0, L㚬/䂻/ḓ;->ḓ:I

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ಫ$உ;->ㄏ(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_5
    sget v0, L㚬/䂻/ḓ;->㰫:I

    if-eq p2, v0, :cond_b

    sget v0, L㚬/䂻/ḓ;->ש:I

    if-ne p2, v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, L㚬/䂻/ბ/ಫ$உ;->䂻:[I

    invoke-virtual {p0, v0, p2}, L㚬/䂻/ბ/ಫ$உ;->䆀([II)Z

    move-result v0

    if-eqz v0, :cond_7

    sget p2, L㚬/䂻/உ;->ม:I

    invoke-static {p1, p2}, L㚬/䂻/ბ/㮕;->㺴(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object v0, p0, L㚬/䂻/ბ/ಫ$உ;->ḓ:[I

    invoke-virtual {p0, v0, p2}, L㚬/䂻/ბ/ಫ$உ;->䆀([II)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p2, L㚬/䂻/㚬;->㚬:I

    invoke-static {p1, p2}, L㚬/䂻/㹖/உ/உ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object v0, p0, L㚬/䂻/ბ/ಫ$உ;->䆀:[I

    invoke-virtual {p0, v0, p2}, L㚬/䂻/ბ/ಫ$உ;->䆀([II)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p2, L㚬/䂻/㚬;->䂻:I

    invoke-static {p1, p2}, L㚬/䂻/㹖/உ/உ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_9
    sget v0, L㚬/䂻/ḓ;->ಋ:I

    if-ne p2, v0, :cond_a

    sget p2, L㚬/䂻/㚬;->ḓ:I

    invoke-static {p1, p2}, L㚬/䂻/㹖/உ/உ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1

    :cond_b
    :goto_0
    sget p2, L㚬/䂻/㚬;->䆀:I

    invoke-static {p1, p2}, L㚬/䂻/㹖/உ/உ;->㚬(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public final 㧦(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget v2, L㚬/䂻/உ;->㲧:I

    invoke-static {p1, v2}, L㚬/䂻/ბ/㮕;->㺴(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v2, L㚬/䂻/ბ/㮕;->䂻:[I

    aput-object v2, v1, v6

    aget-object v2, v1, v6

    invoke-virtual {v3, v2, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    aput v2, v0, v6

    sget-object v2, L㚬/䂻/ბ/㮕;->ḓ:[I

    aput-object v2, v1, v5

    sget v2, L㚬/䂻/உ;->㖪:I

    invoke-static {p1, v2}, L㚬/䂻/ბ/㮕;->䂻(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v5

    sget-object p1, L㚬/䂻/ბ/㮕;->䆀:[I

    aput-object p1, v1, v4

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, v0, v4

    goto :goto_0

    :cond_0
    sget-object v3, L㚬/䂻/ბ/㮕;->䂻:[I

    aput-object v3, v1, v6

    invoke-static {p1, v2}, L㚬/䂻/ბ/㮕;->உ(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v6

    sget-object v3, L㚬/䂻/ბ/㮕;->ḓ:[I

    aput-object v3, v1, v5

    sget v3, L㚬/䂻/உ;->㖪:I

    invoke-static {p1, v3}, L㚬/䂻/ბ/㮕;->䂻(Landroid/content/Context;I)I

    move-result v3

    aput v3, v0, v5

    sget-object v3, L㚬/䂻/ბ/㮕;->䆀:[I

    aput-object v3, v1, v4

    invoke-static {p1, v2}, L㚬/䂻/ბ/㮕;->䂻(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v4

    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public final 㹖(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-static {p1}, L㚬/䂻/ბ/㰫;->உ(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    if-nez p3, :cond_1

    invoke-static {}, L㚬/䂻/ბ/ಫ;->உ()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    :cond_1
    invoke-static {p2, p3}, L㚬/䂻/ბ/ಫ;->ḓ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public 㺴(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6

    sget v0, L㚬/䂻/ḓ;->ڈ:I

    const/4 v1, 0x1

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    if-ne p2, v0, :cond_0

    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, L㚬/䂻/உ;->ม:I

    invoke-static {p1, v0}, L㚬/䂻/ბ/㮕;->䂻(Landroid/content/Context;I)I

    move-result v4

    invoke-static {}, L㚬/䂻/ბ/ಫ;->உ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    invoke-virtual {p0, p2, v4, v5}, L㚬/䂻/ბ/ಫ$உ;->㹖(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, v0}, L㚬/䂻/ბ/㮕;->䂻(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, L㚬/䂻/ბ/ಫ;->உ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    invoke-virtual {p0, p2, v0, v3}, L㚬/䂻/ბ/ಫ$உ;->㹖(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, L㚬/䂻/உ;->㖪:I

    invoke-static {p1, p3}, L㚬/䂻/ბ/㮕;->䂻(Landroid/content/Context;I)I

    move-result p1

    :goto_0
    invoke-static {}, L㚬/䂻/ბ/ಫ;->உ()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, L㚬/䂻/ბ/ಫ$உ;->㹖(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return v1

    :cond_0
    sget v0, L㚬/䂻/ḓ;->ㄬ:I

    if-eq p2, v0, :cond_2

    sget v0, L㚬/䂻/ḓ;->㲧:I

    if-eq p2, v0, :cond_2

    sget v0, L㚬/䂻/ḓ;->㫏:I

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, L㚬/䂻/உ;->ม:I

    invoke-static {p1, v0}, L㚬/䂻/ბ/㮕;->உ(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, L㚬/䂻/ბ/ಫ;->உ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    invoke-virtual {p0, p2, v0, v4}, L㚬/䂻/ბ/ಫ$உ;->㹖(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, L㚬/䂻/உ;->㖪:I

    invoke-static {p1, v0}, L㚬/䂻/ბ/㮕;->䂻(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, L㚬/䂻/ბ/ಫ;->உ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    invoke-virtual {p0, p2, v3, v4}, L㚬/䂻/ბ/ಫ$உ;->㹖(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, v0}, L㚬/䂻/ბ/㮕;->䂻(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0
.end method

.method public 䂻(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6

    invoke-static {}, L㚬/䂻/ბ/ಫ;->உ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iget-object v1, p0, L㚬/䂻/ბ/ಫ$உ;->உ:[I

    invoke-virtual {p0, v1, p2}, L㚬/䂻/ბ/ಫ$உ;->䆀([II)Z

    move-result v1

    const v2, 0x1010031

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    sget v2, L㚬/䂻/உ;->ม:I

    :goto_0
    const/4 p2, -0x1

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    iget-object v1, p0, L㚬/䂻/ბ/ಫ$உ;->㚬:[I

    invoke-virtual {p0, v1, p2}, L㚬/䂻/ბ/ಫ$உ;->䆀([II)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v2, L㚬/䂻/உ;->㖪:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, L㚬/䂻/ბ/ಫ$உ;->㺴:[I

    invoke-virtual {p0, v1, p2}, L㚬/䂻/ბ/ಫ$உ;->䆀([II)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_2
    sget v1, L㚬/䂻/ḓ;->㖪:I

    if-ne p2, v1, :cond_3

    const v2, 0x1010030

    const p2, 0x42233333    # 40.8f

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_1

    :cond_3
    sget v1, L㚬/䂻/ḓ;->㹖:I

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-eqz v1, :cond_7

    invoke-static {p3}, L㚬/䂻/ბ/㰫;->உ(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_5
    invoke-static {p1, v2}, L㚬/䂻/ბ/㮕;->䂻(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1, v0}, L㚬/䂻/ბ/ಫ;->ḓ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq p2, v3, :cond_6

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    return v5

    :cond_7
    return v4
.end method

.method public final 䆀([II)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-ne v3, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
