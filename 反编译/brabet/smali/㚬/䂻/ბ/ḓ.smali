.class public L㚬/䂻/ბ/ḓ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:Landroid/view/View;

.field public ḓ:L㚬/䂻/ბ/ᭊ;

.field public 㚬:I

.field public 㺴:L㚬/䂻/ბ/ᭊ;

.field public final 䂻:L㚬/䂻/ბ/ಫ;

.field public 䆀:L㚬/䂻/ბ/ᭊ;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, L㚬/䂻/ბ/ḓ;->㚬:I

    iput-object p1, p0, L㚬/䂻/ბ/ḓ;->உ:Landroid/view/View;

    invoke-static {}, L㚬/䂻/ბ/ಫ;->䂻()L㚬/䂻/ბ/ಫ;

    move-result-object p1

    iput-object p1, p0, L㚬/䂻/ბ/ḓ;->䂻:L㚬/䂻/ბ/ಫ;

    return-void
.end method


# virtual methods
.method public final உ(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->䆀:L㚬/䂻/ბ/ᭊ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ბ/ᭊ;

    invoke-direct {v0}, L㚬/䂻/ბ/ᭊ;-><init>()V

    iput-object v0, p0, L㚬/䂻/ბ/ḓ;->䆀:L㚬/䂻/ბ/ᭊ;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->䆀:L㚬/䂻/ბ/ᭊ;

    invoke-virtual {v0}, L㚬/䂻/ბ/ᭊ;->உ()V

    iget-object v1, p0, L㚬/䂻/ბ/ḓ;->உ:Landroid/view/View;

    invoke-static {v1}, L㚬/ℓ/ἥ/㭲;->ཇ(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, L㚬/䂻/ბ/ᭊ;->㺴:Z

    iput-object v1, v0, L㚬/䂻/ბ/ᭊ;->உ:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v1, p0, L㚬/䂻/ბ/ḓ;->உ:Landroid/view/View;

    invoke-static {v1}, L㚬/ℓ/ἥ/㭲;->ᓭ(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-boolean v2, v0, L㚬/䂻/ბ/ᭊ;->㚬:Z

    iput-object v1, v0, L㚬/䂻/ბ/ᭊ;->䂻:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    iget-boolean v1, v0, L㚬/䂻/ბ/ᭊ;->㺴:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, L㚬/䂻/ბ/ᭊ;->㚬:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    iget-object v1, p0, L㚬/䂻/ბ/ḓ;->உ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {p1, v0, v1}, L㚬/䂻/ბ/ಫ;->ㄏ(Landroid/graphics/drawable/Drawable;L㚬/䂻/ბ/ᭊ;[I)V

    return v2
.end method

.method public ಫ(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->ḓ:L㚬/䂻/ბ/ᭊ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ბ/ᭊ;

    invoke-direct {v0}, L㚬/䂻/ბ/ᭊ;-><init>()V

    iput-object v0, p0, L㚬/䂻/ბ/ḓ;->ḓ:L㚬/䂻/ბ/ᭊ;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->ḓ:L㚬/䂻/ბ/ᭊ;

    iput-object p1, v0, L㚬/䂻/ბ/ᭊ;->䂻:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, L㚬/䂻/ბ/ᭊ;->㚬:Z

    invoke-virtual {p0}, L㚬/䂻/ბ/ḓ;->䂻()V

    return-void
.end method

.method public ᆻ(I)V
    .locals 2

    iput p1, p0, L㚬/䂻/ბ/ḓ;->㚬:I

    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->䂻:L㚬/䂻/ბ/ಫ;

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/䂻/ბ/ḓ;->உ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, L㚬/䂻/ბ/ಫ;->䆀(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ḓ;->ℓ(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, L㚬/䂻/ბ/ḓ;->䂻()V

    return-void
.end method

.method public ḓ(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->உ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, L㚬/䂻/ಫ;->㶵:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, L㚬/䂻/ბ/ᣝ;->㖪(Landroid/content/Context;Landroid/util/AttributeSet;[III)L㚬/䂻/ბ/ᣝ;

    move-result-object p1

    :try_start_0
    sget p2, L㚬/䂻/ಫ;->㜢:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1}, L㚬/䂻/ბ/ᣝ;->ཇ(II)I

    move-result p2

    iput p2, p0, L㚬/䂻/ბ/ḓ;->㚬:I

    iget-object p2, p0, L㚬/䂻/ბ/ḓ;->䂻:L㚬/䂻/ბ/ಫ;

    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->உ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, L㚬/䂻/ბ/ḓ;->㚬:I

    invoke-virtual {p2, v0, v2}, L㚬/䂻/ბ/ಫ;->䆀(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, L㚬/䂻/ბ/ḓ;->ℓ(Landroid/content/res/ColorStateList;)V

    :cond_0
    sget p2, L㚬/䂻/ಫ;->ⰴ:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->உ:Landroid/view/View;

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->㚬(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {v0, p2}, L㚬/ℓ/ἥ/㭲;->䋡(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    sget p2, L㚬/䂻/ಫ;->ὺ:I

    invoke-virtual {p1, p2}, L㚬/䂻/ბ/ᣝ;->㞘(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->உ:Landroid/view/View;

    invoke-virtual {p1, p2, v1}, L㚬/䂻/ბ/ᣝ;->㧦(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, L㚬/䂻/ბ/㰫;->㺴(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    invoke-static {v0, p2}, L㚬/ℓ/ἥ/㭲;->ἃ(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p1}, L㚬/䂻/ბ/ᣝ;->㢏()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, L㚬/䂻/ბ/ᣝ;->㢏()V

    throw p2
.end method

.method public ℓ(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->㺴:L㚬/䂻/ბ/ᭊ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ბ/ᭊ;

    invoke-direct {v0}, L㚬/䂻/ბ/ᭊ;-><init>()V

    iput-object v0, p0, L㚬/䂻/ბ/ḓ;->㺴:L㚬/䂻/ბ/ᭊ;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->㺴:L㚬/䂻/ბ/ᭊ;

    iput-object p1, v0, L㚬/䂻/ბ/ᭊ;->உ:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, L㚬/䂻/ბ/ᭊ;->㺴:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, L㚬/䂻/ბ/ḓ;->㺴:L㚬/䂻/ბ/ᭊ;

    :goto_0
    invoke-virtual {p0}, L㚬/䂻/ბ/ḓ;->䂻()V

    return-void
.end method

.method public ㄏ(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->ḓ:L㚬/䂻/ბ/ᭊ;

    if-nez v0, :cond_0

    new-instance v0, L㚬/䂻/ბ/ᭊ;

    invoke-direct {v0}, L㚬/䂻/ბ/ᭊ;-><init>()V

    iput-object v0, p0, L㚬/䂻/ბ/ḓ;->ḓ:L㚬/䂻/ბ/ᭊ;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->ḓ:L㚬/䂻/ბ/ᭊ;

    iput-object p1, v0, L㚬/䂻/ბ/ᭊ;->உ:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, L㚬/䂻/ბ/ᭊ;->㺴:Z

    invoke-virtual {p0}, L㚬/䂻/ბ/ḓ;->䂻()V

    return-void
.end method

.method public 㚬()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->ḓ:L㚬/䂻/ბ/ᭊ;

    if-eqz v0, :cond_0

    iget-object v0, v0, L㚬/䂻/ბ/ᭊ;->உ:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final 㧦()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v0, v3, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->㺴:L㚬/䂻/ბ/ᭊ;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-ne v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public 㺴()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->ḓ:L㚬/䂻/ბ/ᭊ;

    if-eqz v0, :cond_0

    iget-object v0, v0, L㚬/䂻/ბ/ᭊ;->䂻:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public 䂻()V
    .locals 3

    iget-object v0, p0, L㚬/䂻/ბ/ḓ;->உ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, L㚬/䂻/ბ/ḓ;->㧦()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, L㚬/䂻/ბ/ḓ;->உ(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, L㚬/䂻/ბ/ḓ;->ḓ:L㚬/䂻/ბ/ᭊ;

    if-eqz v1, :cond_1

    iget-object v2, p0, L㚬/䂻/ბ/ḓ;->உ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, L㚬/䂻/ბ/ಫ;->ㄏ(Landroid/graphics/drawable/Drawable;L㚬/䂻/ბ/ᭊ;[I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, L㚬/䂻/ბ/ḓ;->㺴:L㚬/䂻/ბ/ᭊ;

    if-eqz v1, :cond_2

    iget-object v2, p0, L㚬/䂻/ბ/ḓ;->உ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, L㚬/䂻/ბ/ಫ;->ㄏ(Landroid/graphics/drawable/Drawable;L㚬/䂻/ბ/ᭊ;[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public 䆀(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, L㚬/䂻/ბ/ḓ;->㚬:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, L㚬/䂻/ბ/ḓ;->ℓ(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, L㚬/䂻/ბ/ḓ;->䂻()V

    return-void
.end method
