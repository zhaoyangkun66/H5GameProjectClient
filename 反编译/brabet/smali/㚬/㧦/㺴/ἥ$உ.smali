.class public L㚬/㧦/㺴/ἥ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/உ/ḓ/䂻;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㧦/㺴/ἥ;->㧦(L㚬/㧦/㺴/ಫ;L㚬/㧦/㺴/䆀;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "L\u36ac/\u0b89/\u1e13/\u40bb<",
        "L\u36ac/\u0b89/\u1e13/\u0b89;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic உ:L㚬/㧦/㺴/ἥ;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/ἥ;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/ἥ$உ;->உ:L㚬/㧦/㺴/ἥ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic உ(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, L㚬/உ/ḓ/உ;

    invoke-virtual {p0, p1}, L㚬/㧦/㺴/ἥ$உ;->䂻(L㚬/உ/ḓ/உ;)V

    return-void
.end method

.method public 䂻(L㚬/உ/ḓ/உ;)V
    .locals 4

    iget-object v0, p0, L㚬/㧦/㺴/ἥ$உ;->உ:L㚬/㧦/㺴/ἥ;

    iget-object v0, v0, L㚬/㧦/㺴/ἥ;->ڈ:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/㧦/㺴/ἥ$ἥ;

    const-string v1, "FragmentManager"

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No IntentSenders were started for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, v0, L㚬/㧦/㺴/ἥ$ἥ;->䂻:Ljava/lang/String;

    iget v0, v0, L㚬/㧦/㺴/ἥ$ἥ;->㚬:I

    iget-object v3, p0, L㚬/㧦/㺴/ἥ$உ;->உ:L㚬/㧦/㺴/ἥ;

    invoke-static {v3}, L㚬/㧦/㺴/ἥ;->㚬(L㚬/㧦/㺴/ἥ;)L㚬/㧦/㺴/㖪;

    move-result-object v3

    invoke-virtual {v3, v2}, L㚬/㧦/㺴/㖪;->ㄏ(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent Sender result delivered for unknown Fragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, L㚬/உ/ḓ/உ;->㧦()I

    move-result v1

    invoke-virtual {p1}, L㚬/உ/ḓ/உ;->ಫ()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v3, v0, v1, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
