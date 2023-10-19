.class public L㚬/ℓ/ཇ/உ$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ཇ/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u40bb"
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/ℓ/ཇ/உ;


# direct methods
.method public constructor <init>(L㚬/ℓ/ཇ/உ;)V
    .locals 0

    iput-object p1, p0, L㚬/ℓ/ཇ/உ$䂻;->䂻:L㚬/ℓ/ཇ/உ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, L㚬/ℓ/ཇ/உ$䂻;->䂻:L㚬/ℓ/ཇ/உ;

    iget-boolean v1, v0, L㚬/ℓ/ཇ/உ;->ბ:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, L㚬/ℓ/ཇ/உ;->ཇ:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v2, v0, L㚬/ℓ/ཇ/உ;->ཇ:Z

    iget-object v0, v0, L㚬/ℓ/ཇ/உ;->䂻:L㚬/ℓ/ཇ/உ$உ;

    invoke-virtual {v0}, L㚬/ℓ/ཇ/உ$உ;->ἥ()V

    :cond_1
    iget-object v0, p0, L㚬/ℓ/ཇ/உ$䂻;->䂻:L㚬/ℓ/ཇ/உ;

    iget-object v0, v0, L㚬/ℓ/ཇ/உ;->䂻:L㚬/ℓ/ཇ/உ$உ;

    invoke-virtual {v0}, L㚬/ℓ/ཇ/உ$உ;->ℓ()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, L㚬/ℓ/ཇ/உ$䂻;->䂻:L㚬/ℓ/ཇ/உ;

    invoke-virtual {v1}, L㚬/ℓ/ཇ/உ;->㖪()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, L㚬/ℓ/ཇ/உ$䂻;->䂻:L㚬/ℓ/ཇ/உ;

    iget-boolean v3, v1, L㚬/ℓ/ཇ/உ;->ᓭ:Z

    if-eqz v3, :cond_3

    iput-boolean v2, v1, L㚬/ℓ/ཇ/உ;->ᓭ:Z

    invoke-virtual {v1}, L㚬/ℓ/ཇ/உ;->㚬()V

    :cond_3
    invoke-virtual {v0}, L㚬/ℓ/ཇ/உ$உ;->உ()V

    invoke-virtual {v0}, L㚬/ℓ/ཇ/உ$உ;->䂻()I

    move-result v1

    invoke-virtual {v0}, L㚬/ℓ/ཇ/உ$உ;->㚬()I

    move-result v0

    iget-object v2, p0, L㚬/ℓ/ཇ/உ$䂻;->䂻:L㚬/ℓ/ཇ/உ;

    invoke-virtual {v2, v1, v0}, L㚬/ℓ/ཇ/உ;->ಫ(II)V

    iget-object v0, p0, L㚬/ℓ/ཇ/உ$䂻;->䂻:L㚬/ℓ/ཇ/உ;

    iget-object v0, v0, L㚬/ℓ/ཇ/உ;->㺴:Landroid/view/View;

    invoke-static {v0, p0}, L㚬/ℓ/ἥ/㭲;->ᇿ(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, L㚬/ℓ/ཇ/உ$䂻;->䂻:L㚬/ℓ/ཇ/உ;

    iput-boolean v2, v0, L㚬/ℓ/ཇ/உ;->ბ:Z

    return-void
.end method
