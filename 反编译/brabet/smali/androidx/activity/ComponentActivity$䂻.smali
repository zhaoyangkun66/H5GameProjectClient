.class public Landroidx/activity/ComponentActivity$䂻;
.super Landroidx/activity/result/ActivityResultRegistry;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ℓ:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$䂻;->ℓ:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Landroidx/activity/result/ActivityResultRegistry;-><init>()V

    return-void
.end method


# virtual methods
.method public 䆀(IL㚬/உ/ḓ/䆀/உ;Ljava/lang/Object;L㚬/ℓ/㺴/䂻;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(I",
            "L\u36ac/\u0b89/\u1e13/\u4180/\u0b89<",
            "TI;TO;>;TI;",
            "L\u36ac/\u2113/\u3eb4/\u40bb;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/activity/ComponentActivity$䂻;->ℓ:Landroidx/activity/ComponentActivity;

    invoke-virtual {p2, v0, p3}, L㚬/உ/ḓ/䆀/உ;->getSynchronousResult(Landroid/content/Context;Ljava/lang/Object;)L㚬/உ/ḓ/䆀/உ$உ;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Landroidx/activity/ComponentActivity$䂻$உ;

    invoke-direct {p3, p0, p1, v1}, Landroidx/activity/ComponentActivity$䂻$உ;-><init>(Landroidx/activity/ComponentActivity$䂻;IL㚬/உ/ḓ/䆀/உ$உ;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {p2, v0, p3}, L㚬/உ/ḓ/䆀/உ;->createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {p2, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move-object v7, p4

    goto :goto_0

    :cond_1
    if-nez p4, :cond_8

    move-object v7, v2

    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string p4, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    array-length p4, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p4, :cond_4

    aget-object v3, p2, v2

    iget-object v4, p0, Landroidx/activity/ComponentActivity$䂻;->ℓ:Landroidx/activity/ComponentActivity;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Landroid/app/Activity;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    new-array p2, v1, [Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {v0, p2, p1}, L㚬/ℓ/㺴/உ;->ἥ(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const-string p4, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, L㚬/உ/ḓ/ḓ;

    :try_start_0
    invoke-virtual {p2}, L㚬/உ/ḓ/ḓ;->ἥ()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {p2}, L㚬/உ/ḓ/ḓ;->ಫ()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p2}, L㚬/உ/ḓ/ḓ;->㧦()I

    move-result v4

    invoke-virtual {p2}, L㚬/உ/ḓ/ḓ;->㹖()I

    move-result v5

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, L㚬/ℓ/㺴/உ;->㞘(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Landroidx/activity/ComponentActivity$䂻$䂻;

    invoke-direct {p4, p0, p1, p2}, Landroidx/activity/ComponentActivity$䂻$䂻;-><init>(Landroidx/activity/ComponentActivity$䂻;ILandroid/content/IntentSender$SendIntentException;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_6
    invoke-static {v0, p2, p1, v7}, L㚬/ℓ/㺴/உ;->㲝(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-virtual {p4}, L㚬/ℓ/㺴/䂻;->உ()Landroid/os/Bundle;

    throw v2
.end method
