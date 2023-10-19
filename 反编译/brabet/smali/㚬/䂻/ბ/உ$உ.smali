.class public L㚬/䂻/ბ/உ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ℓ/ἥ/㲧;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u0b89"
.end annotation


# instance fields
.field public உ:Z

.field public final synthetic 㚬:L㚬/䂻/ბ/உ;

.field public 䂻:I


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/உ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/உ$உ;->㚬:L㚬/䂻/ბ/உ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/䂻/ბ/உ$உ;->உ:Z

    return-void
.end method


# virtual methods
.method public உ(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, L㚬/䂻/ბ/உ$உ;->உ:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, L㚬/䂻/ბ/உ$உ;->㚬:L㚬/䂻/ბ/உ;

    const/4 v0, 0x0

    iput-object v0, p1, L㚬/䂻/ბ/உ;->ᆻ:L㚬/ℓ/ἥ/ม;

    iget v0, p0, L㚬/䂻/ბ/உ$உ;->䂻:I

    invoke-static {p1, v0}, L㚬/䂻/ბ/உ;->䂻(L㚬/䂻/ბ/உ;I)V

    return-void
.end method

.method public 㚬(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, L㚬/䂻/ბ/உ$உ;->உ:Z

    return-void
.end method

.method public 㺴(L㚬/ℓ/ἥ/ม;I)L㚬/䂻/ბ/உ$உ;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/உ$உ;->㚬:L㚬/䂻/ბ/உ;

    iput-object p1, v0, L㚬/䂻/ბ/உ;->ᆻ:L㚬/ℓ/ἥ/ม;

    iput p2, p0, L㚬/䂻/ბ/உ$உ;->䂻:I

    return-object p0
.end method

.method public 䂻(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, L㚬/䂻/ბ/உ$உ;->㚬:L㚬/䂻/ბ/உ;

    const/4 v0, 0x0

    invoke-static {p1, v0}, L㚬/䂻/ბ/உ;->உ(L㚬/䂻/ბ/உ;I)V

    iput-boolean v0, p0, L㚬/䂻/ბ/உ$உ;->உ:Z

    return-void
.end method
