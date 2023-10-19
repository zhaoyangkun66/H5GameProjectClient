.class public L㚬/䂻/㧦/ḓ$ἥ;
.super L㚬/䂻/㧦/ḓ$㹖;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/㧦/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u1f25"
.end annotation


# instance fields
.field public final 㚬:L㚬/䂻/㧦/ㄏ;

.field public final synthetic 㺴:L㚬/䂻/㧦/ḓ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ḓ;L㚬/䂻/㧦/ㄏ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ḓ$ἥ;->㺴:L㚬/䂻/㧦/ḓ;

    invoke-direct {p0, p1}, L㚬/䂻/㧦/ḓ$㹖;-><init>(L㚬/䂻/㧦/ḓ;)V

    iput-object p2, p0, L㚬/䂻/㧦/ḓ$ἥ;->㚬:L㚬/䂻/㧦/ㄏ;

    return-void
.end method


# virtual methods
.method public 㚬()I
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ἥ;->㚬:L㚬/䂻/㧦/ㄏ;

    invoke-virtual {v0}, L㚬/䂻/㧦/ㄏ;->㺴()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public 㺴()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$ἥ;->㺴:L㚬/䂻/㧦/ḓ;

    invoke-virtual {v0}, L㚬/䂻/㧦/ḓ;->ש()Z

    return-void
.end method

.method public 䂻()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method
