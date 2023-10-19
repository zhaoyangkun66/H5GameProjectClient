.class public L㚬/ḙ/ᓭ$உ$உ;
.super L㚬/ḙ/ཇ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/ḙ/ᓭ$உ;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/䆀/உ;

.field public final synthetic 䂻:L㚬/ḙ/ᓭ$உ;


# direct methods
.method public constructor <init>(L㚬/ḙ/ᓭ$உ;L㚬/䆀/உ;)V
    .locals 0

    iput-object p1, p0, L㚬/ḙ/ᓭ$உ$உ;->䂻:L㚬/ḙ/ᓭ$உ;

    iput-object p2, p0, L㚬/ḙ/ᓭ$உ$உ;->உ:L㚬/䆀/உ;

    invoke-direct {p0}, L㚬/ḙ/ཇ;-><init>()V

    return-void
.end method


# virtual methods
.method public ḓ(L㚬/ḙ/ἥ;)V
    .locals 2

    iget-object v0, p0, L㚬/ḙ/ᓭ$உ$உ;->உ:L㚬/䆀/உ;

    iget-object v1, p0, L㚬/ḙ/ᓭ$உ$உ;->䂻:L㚬/ḙ/ᓭ$உ;

    iget-object v1, v1, L㚬/ḙ/ᓭ$உ;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, L㚬/ḙ/ἥ;->䅚(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/ἥ;

    return-void
.end method
