.class public L㚬/ḙ/ർ$உ;
.super L㚬/ḙ/ཇ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/ḙ/ർ;->䋡(Landroid/view/ViewGroup;L㚬/ḙ/㭲;IL㚬/ḙ/㭲;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroid/view/ViewGroup;

.field public final synthetic 㚬:Landroid/view/View;

.field public final synthetic 㺴:L㚬/ḙ/ർ;

.field public final synthetic 䂻:Landroid/view/View;


# direct methods
.method public constructor <init>(L㚬/ḙ/ർ;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, L㚬/ḙ/ർ$உ;->㺴:L㚬/ḙ/ർ;

    iput-object p2, p0, L㚬/ḙ/ർ$உ;->உ:Landroid/view/ViewGroup;

    iput-object p3, p0, L㚬/ḙ/ർ$உ;->䂻:Landroid/view/View;

    iput-object p4, p0, L㚬/ḙ/ർ$உ;->㚬:Landroid/view/View;

    invoke-direct {p0}, L㚬/ḙ/ཇ;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(L㚬/ḙ/ἥ;)V
    .locals 1

    iget-object p1, p0, L㚬/ḙ/ർ$உ;->உ:Landroid/view/ViewGroup;

    invoke-static {p1}, L㚬/ḙ/㲧;->உ(Landroid/view/ViewGroup;)L㚬/ḙ/ม;

    move-result-object p1

    iget-object v0, p0, L㚬/ḙ/ർ$உ;->䂻:Landroid/view/View;

    invoke-interface {p1, v0}, L㚬/ḙ/ม;->㚬(Landroid/view/View;)V

    return-void
.end method

.method public ḓ(L㚬/ḙ/ἥ;)V
    .locals 3

    iget-object v0, p0, L㚬/ḙ/ർ$உ;->㚬:Landroid/view/View;

    sget v1, L㚬/ḙ/ಫ;->䂻:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, L㚬/ḙ/ർ$உ;->உ:Landroid/view/ViewGroup;

    invoke-static {v0}, L㚬/ḙ/㲧;->உ(Landroid/view/ViewGroup;)L㚬/ḙ/ม;

    move-result-object v0

    iget-object v1, p0, L㚬/ḙ/ർ$உ;->䂻:Landroid/view/View;

    invoke-interface {v0, v1}, L㚬/ḙ/ม;->㚬(Landroid/view/View;)V

    invoke-virtual {p1, p0}, L㚬/ḙ/ἥ;->䅚(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/ἥ;

    return-void
.end method

.method public 䂻(L㚬/ḙ/ἥ;)V
    .locals 1

    iget-object p1, p0, L㚬/ḙ/ർ$உ;->䂻:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, L㚬/ḙ/ർ$உ;->உ:Landroid/view/ViewGroup;

    invoke-static {p1}, L㚬/ḙ/㲧;->உ(Landroid/view/ViewGroup;)L㚬/ḙ/ม;

    move-result-object p1

    iget-object v0, p0, L㚬/ḙ/ർ$உ;->䂻:Landroid/view/View;

    invoke-interface {p1, v0}, L㚬/ḙ/ม;->உ(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, L㚬/ḙ/ർ$உ;->㺴:L㚬/ḙ/ർ;

    invoke-virtual {p1}, L㚬/ḙ/ἥ;->䆀()V

    :goto_0
    return-void
.end method
