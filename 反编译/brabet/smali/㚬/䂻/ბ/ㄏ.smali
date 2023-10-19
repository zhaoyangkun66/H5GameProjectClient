.class public L㚬/䂻/ბ/ㄏ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:Landroid/widget/CompoundButton;

.field public ḓ:Z

.field public 㚬:Landroid/graphics/PorterDuff$Mode;

.field public 㺴:Z

.field public 䂻:Landroid/content/res/ColorStateList;

.field public 䆀:Z


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/ბ/ㄏ;->䂻:Landroid/content/res/ColorStateList;

    iput-object v0, p0, L㚬/䂻/ბ/ㄏ;->㚬:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/ბ/ㄏ;->㺴:Z

    iput-boolean v0, p0, L㚬/䂻/ბ/ㄏ;->ḓ:Z

    iput-object p1, p0, L㚬/䂻/ბ/ㄏ;->உ:Landroid/widget/CompoundButton;

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/ㄏ;->உ:Landroid/widget/CompoundButton;

    invoke-static {v0}, L㚬/ℓ/ཇ/㚬;->உ(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, p0, L㚬/䂻/ბ/ㄏ;->㺴:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, L㚬/䂻/ბ/ㄏ;->ḓ:Z

    if-eqz v1, :cond_4

    :cond_0
    invoke-static {v0}, L㚬/ℓ/䆀/㹖/உ;->㞘(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, L㚬/䂻/ბ/ㄏ;->㺴:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, L㚬/䂻/ბ/ㄏ;->䂻:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, L㚬/ℓ/䆀/㹖/உ;->ᓭ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v1, p0, L㚬/䂻/ბ/ㄏ;->ḓ:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, L㚬/䂻/ბ/ㄏ;->㚬:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, L㚬/ℓ/䆀/㹖/உ;->ბ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, L㚬/䂻/ბ/ㄏ;->உ:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    iget-object v1, p0, L㚬/䂻/ბ/ㄏ;->உ:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public ᆻ(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/ㄏ;->䂻:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ბ/ㄏ;->㺴:Z

    invoke-virtual {p0}, L㚬/䂻/ბ/ㄏ;->உ()V

    return-void
.end method

.method public ḓ(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, L㚬/䂻/ბ/ㄏ;->உ:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, L㚬/䂻/ಫ;->ሩ:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, L㚬/䂻/ಫ;->㑹:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    :try_start_1
    iget-object v0, p0, L㚬/䂻/ბ/ㄏ;->உ:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    :try_start_2
    sget p2, L㚬/䂻/ಫ;->䉃:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/ㄏ;->உ:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, L㚬/䂻/㹖/உ/உ;->㺴(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget p2, L㚬/䂻/ಫ;->ᥟ:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, L㚬/䂻/ბ/ㄏ;->உ:Landroid/widget/CompoundButton;

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {v0, p2}, L㚬/ℓ/ཇ/㚬;->㚬(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_2
    sget p2, L㚬/䂻/ಫ;->〵:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, L㚬/䂻/ბ/ㄏ;->உ:Landroid/widget/CompoundButton;

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, L㚬/䂻/ბ/㰫;->㺴(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    invoke-static {v0, p2}, L㚬/ℓ/ཇ/㚬;->㺴(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public ℓ(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/ㄏ;->㚬:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ბ/ㄏ;->ḓ:Z

    invoke-virtual {p0}, L㚬/䂻/ბ/ㄏ;->உ()V

    return-void
.end method

.method public 㚬()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ㄏ;->䂻:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public 㺴()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/ㄏ;->㚬:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public 䂻(I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/ㄏ;->உ:Landroid/widget/CompoundButton;

    invoke-static {v0}, L㚬/ℓ/ཇ/㚬;->உ(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public 䆀()V
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ბ/ㄏ;->䆀:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/ბ/ㄏ;->䆀:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ბ/ㄏ;->䆀:Z

    invoke-virtual {p0}, L㚬/䂻/ბ/ㄏ;->உ()V

    return-void
.end method
