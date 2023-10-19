.class public abstract L㚬/㧦/㺴/ಫ;
.super L㚬/㧦/㺴/䆀;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "L\u36ac/\u39e6/\u3eb4/\u4180;"
    }
.end annotation


# instance fields
.field public final ḓ:L㚬/㧦/㺴/ἥ;

.field public final 㚬:Landroid/content/Context;

.field public final 㺴:Landroid/os/Handler;

.field public final 䂻:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0

    invoke-direct {p0}, L㚬/㧦/㺴/䆀;-><init>()V

    new-instance p4, L㚬/㧦/㺴/ཇ;

    invoke-direct {p4}, L㚬/㧦/㺴/ཇ;-><init>()V

    iput-object p4, p0, L㚬/㧦/㺴/ಫ;->ḓ:L㚬/㧦/㺴/ἥ;

    iput-object p1, p0, L㚬/㧦/㺴/ಫ;->䂻:Landroid/app/Activity;

    const-string p1, "context == null"

    invoke-static {p2, p1}, L㚬/ℓ/㹖/ᆻ;->㺴(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    iput-object p2, p0, L㚬/㧦/㺴/ಫ;->㚬:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {p3, p1}, L㚬/ℓ/㹖/ᆻ;->㺴(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Landroid/os/Handler;

    iput-object p3, p0, L㚬/㧦/㺴/ಫ;->㺴:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, L㚬/㧦/㺴/ಫ;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public ಫ(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public ཇ(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p2    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    move v3, p3

    if-ne v3, v0, :cond_0

    move-object v0, p0

    iget-object v1, v0, L㚬/㧦/㺴/ಫ;->䂻:Landroid/app/Activity;

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, L㚬/ℓ/㺴/உ;->㞘(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    move-object v0, p0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public ᆻ()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/ಫ;->㺴:Landroid/os/Handler;

    return-object v0
.end method

.method public ᓭ()V
    .locals 0

    return-void
.end method

.method public ḓ()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/ಫ;->䂻:Landroid/app/Activity;

    return-object v0
.end method

.method public ἥ(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    iget-object p1, p0, L㚬/㧦/㺴/ಫ;->㚬:Landroid/content/Context;

    invoke-static {p1, p2, p4}, L㚬/ℓ/ḓ/உ;->ℓ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract ℓ()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public ㄏ()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/ಫ;->㚬:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public 㚬(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public 㧦(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public 㹖(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public 㺴()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public 䆀()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, L㚬/㧦/㺴/ಫ;->㚬:Landroid/content/Context;

    return-object v0
.end method
