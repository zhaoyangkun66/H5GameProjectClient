.class public abstract L㚬/䂻/ἥ/உ/䂻$㚬;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ἥ/உ/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u36ac"
.end annotation


# instance fields
.field public ש:Z

.field public ڈ:Z

.field public final உ:L㚬/䂻/ἥ/உ/䂻;

.field public ಋ:I

.field public ಫ:Z

.field public ม:Z

.field public ཇ:I

.field public ბ:I

.field public ᆻ:[Landroid/graphics/drawable/Drawable;

.field public ᓭ:I

.field public ᰘ:Landroid/graphics/PorterDuff$Mode;

.field public ᱹ:Z

.field public ḓ:I

.field public ḙ:Z

.field public ἥ:Z

.field public ᾦ:I

.field public ℓ:I

.field public ㄏ:Z

.field public ㄬ:Z

.field public 㖪:Z

.field public 㚬:I

.field public 㞘:Z

.field public 㢏:Z

.field public 㥁:Z

.field public 㧦:Landroid/graphics/Rect;

.field public 㨃:Landroid/content/res/ColorStateList;

.field public 㫏:I

.field public 㭲:I

.field public 㰫:Landroid/graphics/ColorFilter;

.field public 㲝:I

.field public 㲧:Z

.field public 㹖:Z

.field public 㺴:I

.field public 䂻:Landroid/content/res/Resources;

.field public 䆀:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(L㚬/䂻/ἥ/உ/䂻$㚬;L㚬/䂻/ἥ/உ/䂻;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/16 v0, 0xa0

    iput v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㚬:I

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ㄏ:Z

    iput-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㹖:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㲧:Z

    iput v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ಋ:I

    iput v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᾦ:I

    iput-object p2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->உ:L㚬/䂻/ἥ/உ/䂻;

    if-eqz p3, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->䂻:Landroid/content/res/Resources;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䂻:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    iget p2, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㚬:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-static {p3, p2}, L㚬/䂻/ἥ/உ/䂻;->䆀(Landroid/content/res/Resources;I)I

    move-result p2

    iput p2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㚬:I

    if-eqz p1, :cond_a

    iget p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㺴:I

    iput p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㺴:I

    iget p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ḓ:I

    iput p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ḓ:I

    iput-boolean v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㢏:Z

    iput-boolean v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ม:Z

    iget-boolean p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ㄏ:Z

    iput-boolean p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ㄏ:Z

    iget-boolean p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㹖:Z

    iput-boolean p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㹖:Z

    iget-boolean p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㲧:Z

    iput-boolean p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㲧:Z

    iget-boolean p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ㄬ:Z

    iput-boolean p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ㄬ:Z

    iget p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㫏:I

    iput p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㫏:I

    iget p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ಋ:I

    iput p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ಋ:I

    iget p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ᾦ:I

    iput p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᾦ:I

    iget-boolean p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ڈ:Z

    iput-boolean p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ڈ:Z

    iget-object p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㰫:Landroid/graphics/ColorFilter;

    iput-object p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㰫:Landroid/graphics/ColorFilter;

    iget-boolean p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ש:Z

    iput-boolean p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ש:Z

    iget-object p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㨃:Landroid/content/res/ColorStateList;

    iput-object p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㨃:Landroid/content/res/ColorStateList;

    iget-object p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ᰘ:Landroid/graphics/PorterDuff$Mode;

    iput-object p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᰘ:Landroid/graphics/PorterDuff$Mode;

    iget-boolean p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ᱹ:Z

    iput-boolean p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᱹ:Z

    iget-boolean p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㥁:Z

    iput-boolean p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㥁:Z

    iget p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㚬:I

    if-ne p3, p2, :cond_4

    iget-boolean p2, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ಫ:Z

    if-eqz p2, :cond_3

    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㧦:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㧦:Landroid/graphics/Rect;

    iput-boolean v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ಫ:Z

    :cond_3
    iget-boolean p2, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ἥ:Z

    if-eqz p2, :cond_4

    iget p2, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ཇ:I

    iput p2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ཇ:I

    iget p2, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ᓭ:I

    iput p2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᓭ:I

    iget p2, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ბ:I

    iput p2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ბ:I

    iget p2, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㲝:I

    iput p2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㲝:I

    iput-boolean v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ἥ:Z

    :cond_4
    iget-boolean p2, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㞘:Z

    if-eqz p2, :cond_5

    iget p2, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㭲:I

    iput p2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㭲:I

    iput-boolean v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㞘:Z

    :cond_5
    iget-boolean p2, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ḙ:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->㖪:Z

    iput-boolean p2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㖪:Z

    iput-boolean v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ḙ:Z

    :cond_6
    iget-object p2, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    array-length p3, p2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    iget p3, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    iput p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    iget-object p1, p1, L㚬/䂻/ἥ/உ/䂻$㚬;->䆀:Landroid/util/SparseArray;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_2

    :cond_7
    new-instance p1, Landroid/util/SparseArray;

    iget p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    :goto_2
    iput-object p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䆀:Landroid/util/SparseArray;

    iget p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    :goto_3
    if-ge v0, p1, :cond_b

    aget-object p3, p2, v0

    if-eqz p3, :cond_9

    aget-object p3, p2, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    if-eqz p3, :cond_8

    iget-object v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䆀:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    iget-object p3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    aget-object v1, p2, v0

    aput-object v1, p3, v0

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    const/16 p1, 0xa

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    iput v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    :cond_b
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 6

    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    iget-object v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_0
    iget-object v4, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䆀:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㺴:I

    iget v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ḓ:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final உ(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    iget-object v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, L㚬/䂻/ἥ/உ/䂻$㚬;->ᓭ(II)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->உ:L㚬/䂻/ἥ/உ/䂻;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    iget v3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    add-int/2addr v3, v2

    iput v3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    iget v2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ḓ:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v2

    iput p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ḓ:I

    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻$㚬;->ბ()V

    const/4 p1, 0x0

    iput-object p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㧦:Landroid/graphics/Rect;

    iput-boolean v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ಫ:Z

    iput-boolean v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ἥ:Z

    iput-boolean v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㢏:Z

    return v0
.end method

.method public final ಫ()I
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ἥ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻$㚬;->㺴()V

    :cond_0
    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㲝:I

    return v0
.end method

.method public final ม(II)Z
    .locals 7

    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    iget-object v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v5, v1, v3

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    aget-object v5, v1, v3

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ne v3, p2, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㫏:I

    return v4
.end method

.method public final ཇ()I
    .locals 6

    iget-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㞘:Z

    if-eqz v0, :cond_0

    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㭲:I

    return v0

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻$㚬;->ḓ()V

    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    iget-object v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    if-lez v0, :cond_1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v0, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    invoke-static {v2, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput v2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㭲:I

    iput-boolean v3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㞘:Z

    return v2
.end method

.method public ბ()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㞘:Z

    iput-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ḙ:Z

    return-void
.end method

.method public final ᆻ(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䆀:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䆀:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䂻:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, L㚬/䂻/ἥ/உ/䂻$㚬;->㭲(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, p1

    iget-object p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䆀:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䆀:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    iput-object v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䆀:Landroid/util/SparseArray;

    :cond_1
    return-object v2

    :cond_2
    return-object v1
.end method

.method public ᓭ(II)V
    .locals 2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final ḓ()V
    .locals 6

    iget-object v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䆀:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䆀:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䆀:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v4, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䂻:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, L㚬/䂻/ἥ/உ/䂻$㚬;->㭲(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䆀:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method

.method public final ḙ(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㹖:Z

    return-void
.end method

.method public final ἥ()I
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ἥ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻$㚬;->㺴()V

    :cond_0
    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ཇ:I

    return v0
.end method

.method public final ℓ()I
    .locals 1

    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    return v0
.end method

.method public final ㄏ()I
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ἥ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻$㚬;->㺴()V

    :cond_0
    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᓭ:I

    return v0
.end method

.method public final ㄬ(Landroid/content/res/Resources;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->䂻:Landroid/content/res/Resources;

    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㚬:I

    invoke-static {p1, v0}, L㚬/䂻/ἥ/உ/䂻;->䆀(Landroid/content/res/Resources;I)I

    move-result p1

    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㚬:I

    iput p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㚬:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ἥ:Z

    iput-boolean p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ಫ:Z

    :cond_0
    return-void
.end method

.method public final 㖪(I)V
    .locals 0

    iput p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ಋ:I

    return-void
.end method

.method public declared-synchronized 㚬()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㢏:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ม:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻$㚬;->ḓ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㢏:Z

    iget v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    iget-object v2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_1

    iput-boolean v3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ม:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    iput-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ม:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract 㞘()V
.end method

.method public final 㢏(I)V
    .locals 0

    iput p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᾦ:I

    return-void
.end method

.method public final 㧦()I
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ἥ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻$㚬;->㺴()V

    :cond_0
    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ბ:I

    return v0
.end method

.method public final 㭲(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㫏:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->உ:L㚬/䂻/ἥ/உ/䂻;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object p1
.end method

.method public final 㲝()Z
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㹖:Z

    return v0
.end method

.method public final 㲧(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ㄏ:Z

    return-void
.end method

.method public final 㹖()Landroid/graphics/Rect;
    .locals 8

    iget-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ㄏ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㧦:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    iget-boolean v2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ಫ:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻$㚬;->ḓ()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    iget-object v3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_7

    aget-object v6, v3, v5

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_2
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_3

    iput v6, v1, Landroid/graphics/Rect;->left:I

    :cond_3
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_4

    iput v6, v1, Landroid/graphics/Rect;->top:I

    :cond_4
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_5

    iput v6, v1, Landroid/graphics/Rect;->right:I

    :cond_5
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_6

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ಫ:Z

    iput-object v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㧦:Landroid/graphics/Rect;

    return-object v1

    :cond_8
    :goto_1
    return-object v0
.end method

.method public 㺴()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ἥ:Z

    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻$㚬;->ḓ()V

    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    iget-object v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    iput v2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᓭ:I

    iput v2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ཇ:I

    const/4 v2, 0x0

    iput v2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㲝:I

    iput v2, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ბ:I

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ཇ:I

    if-le v4, v5, :cond_0

    iput v4, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ཇ:I

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᓭ:I

    if-le v4, v5, :cond_1

    iput v4, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᓭ:I

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    iget v5, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ბ:I

    if-le v4, v5, :cond_2

    iput v4, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ბ:I

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    iget v4, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㲝:I

    if-le v3, v4, :cond_3

    iput v3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->㲝:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final 䂻(Landroid/content/res/Resources$Theme;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p0}, L㚬/䂻/ἥ/உ/䂻$㚬;->ḓ()V

    iget v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ℓ:I

    iget-object v1, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget v3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ḓ:I

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ḓ:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, L㚬/䂻/ἥ/உ/䂻$㚬;->ㄬ(Landroid/content/res/Resources;)V

    :cond_2
    return-void
.end method

.method public final 䆀()I
    .locals 1

    iget-object v0, p0, L㚬/䂻/ἥ/உ/䂻$㚬;->ᆻ:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method
