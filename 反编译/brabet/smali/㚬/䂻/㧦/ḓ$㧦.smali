.class public L㚬/䂻/㧦/ḓ$㧦;
.super L㚬/䂻/㧦/ḓ$㹖;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/㧦/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u39e6"
.end annotation


# instance fields
.field public final 㚬:Landroid/os/PowerManager;

.field public final synthetic 㺴:L㚬/䂻/㧦/ḓ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ḓ;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ḓ$㧦;->㺴:L㚬/䂻/㧦/ḓ;

    invoke-direct {p0, p1}, L㚬/䂻/㧦/ḓ$㹖;-><init>(L㚬/䂻/㧦/ḓ;)V

    const-string p1, "power"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, L㚬/䂻/㧦/ḓ$㧦;->㚬:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public 㚬()I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$㧦;->㚬:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :cond_0
    return v1
.end method

.method public 㺴()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$㧦;->㺴:L㚬/䂻/㧦/ḓ;

    invoke-virtual {v0}, L㚬/䂻/㧦/ḓ;->ש()Z

    return-void
.end method

.method public 䂻()Landroid/content/IntentFilter;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
