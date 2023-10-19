.class public final L㺴/㚬/உ/䂻/㢏/㚬;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:L㺴/㚬/உ/䂻/㢏/䂻;

.field public final ᆻ:L㺴/㚬/உ/䂻/㢏/䂻;

.field public final ḓ:L㺴/㚬/உ/䂻/㢏/䂻;

.field public final ℓ:Landroid/graphics/Paint;

.field public final 㚬:L㺴/㚬/உ/䂻/㢏/䂻;

.field public final 㺴:L㺴/㚬/உ/䂻/㢏/䂻;

.field public final 䂻:L㺴/㚬/உ/䂻/㢏/䂻;

.field public final 䆀:L㺴/㚬/உ/䂻/㢏/䂻;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, L㺴/㚬/உ/䂻/䂻;->ბ:I

    const-class v1, L㺴/㚬/உ/䂻/㢏/ℓ;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, L㺴/㚬/உ/䂻/ש/䂻;->㚬(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    sget-object v1, L㺴/㚬/உ/䂻/㧦;->ᥟ:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, L㺴/㚬/உ/䂻/㧦;->㝒:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, L㺴/㚬/உ/䂻/㢏/䂻;->உ(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㢏/䂻;

    move-result-object v1

    iput-object v1, p0, L㺴/㚬/உ/䂻/㢏/㚬;->உ:L㺴/㚬/உ/䂻/㢏/䂻;

    sget v1, L㺴/㚬/உ/䂻/㧦;->〵:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, L㺴/㚬/உ/䂻/㢏/䂻;->உ(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㢏/䂻;

    move-result-object v1

    iput-object v1, p0, L㺴/㚬/உ/䂻/㢏/㚬;->ᆻ:L㺴/㚬/உ/䂻/㢏/䂻;

    sget v1, L㺴/㚬/உ/䂻/㧦;->䆋:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, L㺴/㚬/உ/䂻/㢏/䂻;->உ(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㢏/䂻;

    move-result-object v1

    iput-object v1, p0, L㺴/㚬/உ/䂻/㢏/㚬;->䂻:L㺴/㚬/உ/䂻/㢏/䂻;

    sget v1, L㺴/㚬/உ/䂻/㧦;->ㅛ:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, L㺴/㚬/உ/䂻/㢏/䂻;->உ(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㢏/䂻;

    move-result-object v1

    iput-object v1, p0, L㺴/㚬/உ/䂻/㢏/㚬;->㚬:L㺴/㚬/உ/䂻/㢏/䂻;

    sget v1, L㺴/㚬/உ/䂻/㧦;->㓎:I

    invoke-static {p1, v0, v1}, L㺴/㚬/உ/䂻/ש/㚬;->உ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sget v3, L㺴/㚬/உ/䂻/㧦;->ၶ:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, L㺴/㚬/உ/䂻/㢏/䂻;->உ(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㢏/䂻;

    move-result-object v3

    iput-object v3, p0, L㺴/㚬/உ/䂻/㢏/㚬;->㺴:L㺴/㚬/உ/䂻/㢏/䂻;

    sget v3, L㺴/㚬/உ/䂻/㧦;->ѵ:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, L㺴/㚬/உ/䂻/㢏/䂻;->உ(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㢏/䂻;

    move-result-object v3

    iput-object v3, p0, L㺴/㚬/உ/䂻/㢏/㚬;->ḓ:L㺴/㚬/உ/䂻/㢏/䂻;

    sget v3, L㺴/㚬/உ/䂻/㧦;->㼲:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, L㺴/㚬/உ/䂻/㢏/䂻;->உ(Landroid/content/Context;I)L㺴/㚬/உ/䂻/㢏/䂻;

    move-result-object p1

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/㚬;->䆀:L㺴/㚬/உ/䂻/㢏/䂻;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/㚬;->ℓ:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
