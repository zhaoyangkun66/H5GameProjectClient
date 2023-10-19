.class public final L㚬/㺴/䂻/㚬$உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㺴/䂻/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u0b89"
.end annotation


# instance fields
.field public final உ:Landroid/content/Intent;

.field public ḓ:Z

.field public 㚬:Landroid/os/Bundle;

.field public 㺴:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public 䂻:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(L㚬/㺴/䂻/ḓ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, L㚬/㺴/䂻/㚬$உ;->உ:Landroid/content/Intent;

    const/4 v1, 0x0

    iput-object v1, p0, L㚬/㺴/䂻/㚬$உ;->䂻:Ljava/util/ArrayList;

    iput-object v1, p0, L㚬/㺴/䂻/㚬$உ;->㚬:Landroid/os/Bundle;

    iput-object v1, p0, L㚬/㺴/䂻/㚬$உ;->㺴:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput-boolean v2, p0, L㚬/㺴/䂻/㚬$உ;->ḓ:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/㺴/䂻/ḓ;->䂻()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, L㚬/㺴/䂻/ḓ;->உ()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const-string p1, "android.support.customtabs.extra.SESSION"

    invoke-static {v2, p1, v1}, L㚬/ℓ/㺴/ḓ;->䂻(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public உ()L㚬/㺴/䂻/㚬;
    .locals 3

    iget-object v0, p0, L㚬/㺴/䂻/㚬$உ;->䂻:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/㺴/䂻/㚬$உ;->உ:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.MENU_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, L㚬/㺴/䂻/㚬$உ;->㺴:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v1, p0, L㚬/㺴/䂻/㚬$உ;->உ:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, L㚬/㺴/䂻/㚬$உ;->உ:Landroid/content/Intent;

    iget-boolean v1, p0, L㚬/㺴/䂻/㚬$உ;->ḓ:Z

    const-string v2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, L㚬/㺴/䂻/㚬;

    iget-object v1, p0, L㚬/㺴/䂻/㚬$உ;->உ:Landroid/content/Intent;

    iget-object v2, p0, L㚬/㺴/䂻/㚬$உ;->㚬:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, L㚬/㺴/䂻/㚬;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-object v0
.end method
