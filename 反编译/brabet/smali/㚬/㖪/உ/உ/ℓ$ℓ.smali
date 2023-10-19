.class public L㚬/㖪/உ/உ/ℓ$ℓ;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㖪/உ/உ/ℓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u2113"
.end annotation


# instance fields
.field public உ:I

.field public ಫ:Z

.field public ᆻ:Landroid/content/res/ColorStateList;

.field public ḓ:Z

.field public ℓ:Landroid/graphics/PorterDuff$Mode;

.field public ㄏ:I

.field public 㚬:Landroid/content/res/ColorStateList;

.field public 㧦:Z

.field public 㹖:Landroid/graphics/Paint;

.field public 㺴:Landroid/graphics/PorterDuff$Mode;

.field public 䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

.field public 䆀:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    sget-object v0, L㚬/㖪/உ/உ/ℓ;->㧦:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, L㚬/㖪/உ/உ/ℓ$ᆻ;

    invoke-direct {v0}, L㚬/㖪/உ/உ/ℓ$ᆻ;-><init>()V

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    return-void
.end method

.method public constructor <init>(L㚬/㖪/உ/உ/ℓ$ℓ;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    sget-object v0, L㚬/㖪/உ/உ/ℓ;->㧦:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    iget v0, p1, L㚬/㖪/உ/உ/ℓ$ℓ;->உ:I

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->உ:I

    new-instance v0, L㚬/㖪/உ/உ/ℓ$ᆻ;

    iget-object v1, p1, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    invoke-direct {v0, v1}, L㚬/㖪/உ/உ/ℓ$ᆻ;-><init>(L㚬/㖪/உ/உ/ℓ$ᆻ;)V

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    iget-object v1, p1, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    iget-object v1, v1, L㚬/㖪/உ/உ/ℓ$ᆻ;->ḓ:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    iget-object v2, v2, L㚬/㖪/உ/உ/ℓ$ᆻ;->ḓ:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, L㚬/㖪/உ/உ/ℓ$ᆻ;->ḓ:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p1, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    iget-object v0, v0, L㚬/㖪/உ/உ/ℓ$ᆻ;->㺴:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    iget-object v2, v2, L㚬/㖪/உ/உ/ℓ$ᆻ;->㺴:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, L㚬/㖪/உ/உ/ℓ$ᆻ;->㺴:Landroid/graphics/Paint;

    :cond_1
    iget-object v0, p1, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    iget-object v0, p1, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴:Landroid/graphics/PorterDuff$Mode;

    iget-boolean p1, p1, L㚬/㖪/உ/உ/ℓ$ℓ;->ḓ:Z

    iput-boolean p1, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->ḓ:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->உ:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, L㚬/㖪/உ/உ/ℓ;

    invoke-direct {v0, p0}, L㚬/㖪/உ/உ/ℓ;-><init>(L㚬/㖪/உ/உ/ℓ$ℓ;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    new-instance p1, L㚬/㖪/உ/உ/ℓ;

    invoke-direct {p1, p0}, L㚬/㖪/உ/உ/ℓ;-><init>(L㚬/㖪/உ/உ/ℓ$ℓ;)V

    return-object p1
.end method

.method public உ(II)Z
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䆀:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䆀:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ಫ(II)V
    .locals 3

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䆀:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䆀:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, L㚬/㖪/உ/உ/ℓ$ᆻ;->䂻(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public ᆻ()Z
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    invoke-virtual {v0}, L㚬/㖪/உ/உ/ℓ$ᆻ;->䆀()Z

    move-result v0

    return v0
.end method

.method public ḓ(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .locals 2

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ$ℓ;->䆀()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㹖:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㹖:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_1
    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㹖:Landroid/graphics/Paint;

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    invoke-virtual {v1}, L㚬/㖪/உ/உ/ℓ$ᆻ;->getRootAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㹖:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p1, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㹖:Landroid/graphics/Paint;

    return-object p1
.end method

.method public ℓ([I)Z
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    invoke-virtual {v0, p1}, L㚬/㖪/உ/உ/ℓ$ᆻ;->ᆻ([I)Z

    move-result p1

    iget-boolean v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㧦:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㧦:Z

    return p1
.end method

.method public ㄏ()V
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->ᆻ:Landroid/content/res/ColorStateList;

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->ℓ:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    invoke-virtual {v0}, L㚬/㖪/உ/உ/ℓ$ᆻ;->getRootAlpha()I

    move-result v0

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->ㄏ:I

    iget-boolean v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->ḓ:Z

    iput-boolean v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->ಫ:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㧦:Z

    return-void
.end method

.method public 㚬(II)V
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䆀:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, L㚬/㖪/உ/உ/ℓ$ℓ;->உ(II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䆀:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㧦:Z

    :cond_1
    return-void
.end method

.method public 㺴(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0, p2}, L㚬/㖪/உ/உ/ℓ$ℓ;->ḓ(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object p2

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䆀:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public 䂻()Z
    .locals 2

    iget-boolean v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㧦:Z

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->ᆻ:Landroid/content/res/ColorStateList;

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㚬:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->ℓ:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->㺴:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->ಫ:Z

    iget-boolean v1, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->ḓ:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->ㄏ:I

    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    invoke-virtual {v1}, L㚬/㖪/உ/உ/ℓ$ᆻ;->getRootAlpha()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public 䆀()Z
    .locals 2

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$ℓ;->䂻:L㚬/㖪/உ/உ/ℓ$ᆻ;

    invoke-virtual {v0}, L㚬/㖪/உ/உ/ℓ$ᆻ;->getRootAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
