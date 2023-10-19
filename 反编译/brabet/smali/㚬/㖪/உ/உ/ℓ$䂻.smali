.class public L㚬/㖪/உ/உ/ℓ$䂻;
.super L㚬/㖪/உ/உ/ℓ$䆀;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㖪/உ/உ/ℓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L㚬/㖪/உ/உ/ℓ$䆀;-><init>()V

    return-void
.end method

.method public constructor <init>(L㚬/㖪/உ/உ/ℓ$䂻;)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/㖪/உ/உ/ℓ$䆀;-><init>(L㚬/㖪/உ/உ/ℓ$䆀;)V

    return-void
.end method


# virtual methods
.method public ḓ(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    const-string v0, "pathData"

    invoke-static {p4, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->ಫ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, L㚬/㖪/உ/உ/உ;->㺴:[I

    invoke-static {p1, p3, p2, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->㧦(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, L㚬/㖪/உ/உ/ℓ$䂻;->䆀(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public 㚬()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final 䆀(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, L㚬/㖪/உ/உ/ℓ$䆀;->䂻:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, L㚬/ℓ/䆀/㚬;->㺴(Ljava/lang/String;)[L㚬/ℓ/䆀/㚬$䂻;

    move-result-object v1

    iput-object v1, p0, L㚬/㖪/உ/உ/ℓ$䆀;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    :cond_1
    const/4 v1, 0x2

    const-string v2, "fillType"

    invoke-static {p1, p2, v2, v1, v0}, L㚬/ℓ/ḓ/㚬/ᆻ;->ᆻ(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, L㚬/㖪/உ/உ/ℓ$䆀;->㚬:I

    return-void
.end method
