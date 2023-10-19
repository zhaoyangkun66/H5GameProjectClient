.class public L㚬/㖪/உ/உ/ℓ$㺴;
.super L㚬/㖪/உ/உ/ℓ$ḓ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㖪/உ/உ/ℓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u3eb4"
.end annotation


# instance fields
.field public final உ:Landroid/graphics/Matrix;

.field public final ಫ:Landroid/graphics/Matrix;

.field public ᆻ:F

.field public ḓ:F

.field public ἥ:Ljava/lang/String;

.field public ℓ:F

.field public ㄏ:F

.field public 㚬:F

.field public 㧦:I

.field public 㹖:[I

.field public 㺴:F

.field public final 䂻:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u35aa/\u0b89/\u0b89/\u2113$\u1e13;",
            ">;"
        }
    .end annotation
.end field

.field public 䆀:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, L㚬/㖪/உ/உ/ℓ$ḓ;-><init>(L㚬/㖪/உ/உ/ℓ$உ;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->உ:Landroid/graphics/Matrix;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䂻:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㚬:F

    iput v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㺴:F

    iput v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ḓ:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䆀:F

    iput v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ᆻ:F

    iput v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ℓ:F

    iput v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ㄏ:F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ಫ:Landroid/graphics/Matrix;

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ἥ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(L㚬/㖪/உ/உ/ℓ$㺴;L㚬/䆀/உ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u36ac/\u35aa/\u0b89/\u0b89/\u2113$\u3eb4;",
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, L㚬/㖪/உ/உ/ℓ$ḓ;-><init>(L㚬/㖪/உ/உ/ℓ$உ;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->உ:Landroid/graphics/Matrix;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䂻:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㚬:F

    iput v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㺴:F

    iput v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ḓ:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䆀:F

    iput v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ᆻ:F

    iput v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ℓ:F

    iput v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ㄏ:F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ಫ:Landroid/graphics/Matrix;

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ἥ:Ljava/lang/String;

    iget v0, p1, L㚬/㖪/உ/உ/ℓ$㺴;->㚬:F

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㚬:F

    iget v0, p1, L㚬/㖪/உ/உ/ℓ$㺴;->㺴:F

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㺴:F

    iget v0, p1, L㚬/㖪/உ/உ/ℓ$㺴;->ḓ:F

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ḓ:F

    iget v0, p1, L㚬/㖪/உ/உ/ℓ$㺴;->䆀:F

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䆀:F

    iget v0, p1, L㚬/㖪/உ/உ/ℓ$㺴;->ᆻ:F

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ᆻ:F

    iget v0, p1, L㚬/㖪/உ/உ/ℓ$㺴;->ℓ:F

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ℓ:F

    iget v0, p1, L㚬/㖪/உ/உ/ℓ$㺴;->ㄏ:F

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ㄏ:F

    iget-object v0, p1, L㚬/㖪/உ/உ/ℓ$㺴;->㹖:[I

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㹖:[I

    iget-object v0, p1, L㚬/㖪/உ/உ/ℓ$㺴;->ἥ:Ljava/lang/String;

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ἥ:Ljava/lang/String;

    iget v2, p1, L㚬/㖪/உ/உ/ℓ$㺴;->㧦:I

    iput v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㧦:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0, p0}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p1, L㚬/㖪/உ/உ/ℓ$㺴;->ಫ:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p1, L㚬/㖪/உ/உ/ℓ$㺴;->䂻:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, L㚬/㖪/உ/உ/ℓ$㺴;

    if-eqz v2, :cond_1

    check-cast v1, L㚬/㖪/உ/உ/ℓ$㺴;

    iget-object v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䂻:Ljava/util/ArrayList;

    new-instance v3, L㚬/㖪/உ/உ/ℓ$㺴;

    invoke-direct {v3, v1, p2}, L㚬/㖪/உ/உ/ℓ$㺴;-><init>(L㚬/㖪/உ/உ/ℓ$㺴;L㚬/䆀/உ;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v2, v1, L㚬/㖪/உ/உ/ℓ$㚬;

    if-eqz v2, :cond_2

    new-instance v2, L㚬/㖪/உ/உ/ℓ$㚬;

    check-cast v1, L㚬/㖪/உ/உ/ℓ$㚬;

    invoke-direct {v2, v1}, L㚬/㖪/உ/உ/ℓ$㚬;-><init>(L㚬/㖪/உ/உ/ℓ$㚬;)V

    goto :goto_1

    :cond_2
    instance-of v2, v1, L㚬/㖪/உ/உ/ℓ$䂻;

    if-eqz v2, :cond_4

    new-instance v2, L㚬/㖪/உ/உ/ℓ$䂻;

    check-cast v1, L㚬/㖪/உ/உ/ℓ$䂻;

    invoke-direct {v2, v1}, L㚬/㖪/உ/உ/ℓ$䂻;-><init>(L㚬/㖪/உ/உ/ℓ$䂻;)V

    :goto_1
    iget-object v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, L㚬/㖪/உ/உ/ℓ$䆀;->䂻:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p2, v1, v2}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ἥ:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ಫ:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㺴:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ḓ:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㚬:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䆀:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ᆻ:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ℓ:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ㄏ:F

    return v0
.end method

.method public setPivotX(F)V
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㺴:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㺴:F

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ$㺴;->㺴()V

    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ḓ:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ḓ:F

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ$㺴;->㺴()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㚬:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㚬:F

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ$㺴;->㺴()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䆀:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䆀:F

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ$㺴;->㺴()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ᆻ:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ᆻ:F

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ$㺴;->㺴()V

    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ℓ:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ℓ:F

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ$㺴;->㺴()V

    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ㄏ:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ㄏ:F

    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ$㺴;->㺴()V

    :cond_0
    return-void
.end method

.method public உ()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/㖪/உ/உ/ℓ$ḓ;

    invoke-virtual {v2}, L㚬/㖪/உ/உ/ℓ$ḓ;->உ()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final ḓ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㹖:[I

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㚬:F

    const-string v1, "rotation"

    const/4 v2, 0x5

    invoke-static {p1, p2, v1, v2, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->䆀(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㚬:F

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㺴:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㺴:F

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ḓ:F

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ḓ:F

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䆀:F

    const-string v1, "scaleX"

    const/4 v2, 0x3

    invoke-static {p1, p2, v1, v2, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->䆀(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䆀:F

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ᆻ:F

    const-string v1, "scaleY"

    const/4 v2, 0x4

    invoke-static {p1, p2, v1, v2, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->䆀(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ᆻ:F

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ℓ:F

    const-string v1, "translateX"

    const/4 v2, 0x6

    invoke-static {p1, p2, v1, v2, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->䆀(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ℓ:F

    iget v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ㄏ:F

    const-string v1, "translateY"

    const/4 v2, 0x7

    invoke-static {p1, p2, v1, v2, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->䆀(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ㄏ:F

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ἥ:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, L㚬/㖪/உ/உ/ℓ$㺴;->㺴()V

    return-void
.end method

.method public 㚬(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    sget-object v0, L㚬/㖪/உ/உ/உ;->䂻:[I

    invoke-static {p1, p3, p2, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->㧦(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, L㚬/㖪/உ/உ/ℓ$㺴;->ḓ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final 㺴()V
    .locals 4

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ಫ:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ಫ:Landroid/graphics/Matrix;

    iget v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㺴:F

    neg-float v1, v1

    iget v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ḓ:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ಫ:Landroid/graphics/Matrix;

    iget v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䆀:F

    iget v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ᆻ:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ಫ:Landroid/graphics/Matrix;

    iget v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㚬:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ಫ:Landroid/graphics/Matrix;

    iget v1, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ℓ:F

    iget v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->㺴:F

    add-float/2addr v1, v2

    iget v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ㄏ:F

    iget v3, p0, L㚬/㖪/உ/உ/ℓ$㺴;->ḓ:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public 䂻([I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, L㚬/㖪/உ/உ/ℓ$㺴;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/㖪/உ/உ/ℓ$ḓ;

    invoke-virtual {v2, p1}, L㚬/㖪/உ/உ/ℓ$ḓ;->䂻([I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
