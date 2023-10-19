.class public L㚬/㧦/㺴/ἥ$㧦;
.super L㚬/உ/ḓ/䆀/உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/ἥ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u39e6"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u36ac/\u0b89/\u1e13/\u4180/\u0b89<",
        "L\u36ac/\u0b89/\u1e13/\u1e13;",
        "L\u36ac/\u0b89/\u1e13/\u0b89;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L㚬/உ/ḓ/䆀/உ;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    check-cast p2, L㚬/உ/ḓ/ḓ;

    invoke-virtual {p0, p1, p2}, L㚬/㧦/㺴/ἥ$㧦;->உ(Landroid/content/Context;L㚬/உ/ḓ/ḓ;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, L㚬/㧦/㺴/ἥ$㧦;->䂻(ILandroid/content/Intent;)L㚬/உ/ḓ/உ;

    move-result-object p1

    return-object p1
.end method

.method public உ(Landroid/content/Context;L㚬/உ/ḓ/ḓ;)Landroid/content/Intent;
    .locals 3

    new-instance p1, Landroid/content/Intent;

    const-string v0, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, L㚬/உ/ḓ/ḓ;->ಫ()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, L㚬/உ/ḓ/ḓ$䂻;

    invoke-virtual {p2}, L㚬/உ/ḓ/ḓ;->ἥ()Landroid/content/IntentSender;

    move-result-object v1

    invoke-direct {v0, v1}, L㚬/உ/ḓ/ḓ$䂻;-><init>(Landroid/content/IntentSender;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, L㚬/உ/ḓ/ḓ$䂻;->䂻(Landroid/content/Intent;)L㚬/உ/ḓ/ḓ$䂻;

    invoke-virtual {p2}, L㚬/உ/ḓ/ḓ;->㹖()I

    move-result v1

    invoke-virtual {p2}, L㚬/உ/ḓ/ḓ;->㧦()I

    move-result p2

    invoke-virtual {v0, v1, p2}, L㚬/உ/ḓ/ḓ$䂻;->㚬(II)L㚬/உ/ḓ/ḓ$䂻;

    invoke-virtual {v0}, L㚬/உ/ḓ/ḓ$䂻;->உ()L㚬/உ/ḓ/ḓ;

    move-result-object p2

    :cond_0
    const-string v0, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x2

    invoke-static {p2}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CreateIntent created the following intent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FragmentManager"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method public 䂻(ILandroid/content/Intent;)L㚬/உ/ḓ/உ;
    .locals 1

    new-instance v0, L㚬/உ/ḓ/உ;

    invoke-direct {v0, p1, p2}, L㚬/உ/ḓ/உ;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method
