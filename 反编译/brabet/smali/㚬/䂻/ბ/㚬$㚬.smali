.class public L㚬/䂻/ბ/㚬$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u36ac"
.end annotation


# instance fields
.field public final synthetic 㚬:L㚬/䂻/ბ/㚬;

.field public 䂻:L㚬/䂻/ბ/㚬$ḓ;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㚬;L㚬/䂻/ბ/㚬$ḓ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/㚬$㚬;->㚬:L㚬/䂻/ბ/㚬;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, L㚬/䂻/ბ/㚬$㚬;->䂻:L㚬/䂻/ბ/㚬$ḓ;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㚬$㚬;->㚬:L㚬/䂻/ბ/㚬;

    invoke-static {v0}, L㚬/䂻/ბ/㚬;->㖪(L㚬/䂻/ბ/㚬;)L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㚬$㚬;->㚬:L㚬/䂻/ბ/㚬;

    invoke-static {v0}, L㚬/䂻/ბ/㚬;->㢏(L㚬/䂻/ბ/㚬;)L㚬/䂻/ᓭ/ಫ/ᆻ;

    move-result-object v0

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㺴()V

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/㚬$㚬;->㚬:L㚬/䂻/ბ/㚬;

    invoke-static {v0}, L㚬/䂻/ბ/㚬;->ม(L㚬/䂻/ბ/㚬;)L㚬/䂻/ᓭ/ಫ/ཇ;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/㚬$㚬;->䂻:L㚬/䂻/ბ/㚬$ḓ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/㹖;->ἥ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, L㚬/䂻/ბ/㚬$㚬;->㚬:L㚬/䂻/ბ/㚬;

    iget-object v1, p0, L㚬/䂻/ბ/㚬$㚬;->䂻:L㚬/䂻/ბ/㚬$ḓ;

    iput-object v1, v0, L㚬/䂻/ბ/㚬;->㲧:L㚬/䂻/ბ/㚬$ḓ;

    :cond_1
    iget-object v0, p0, L㚬/䂻/ბ/㚬$㚬;->㚬:L㚬/䂻/ბ/㚬;

    const/4 v1, 0x0

    iput-object v1, v0, L㚬/䂻/ბ/㚬;->㫏:L㚬/䂻/ბ/㚬$㚬;

    return-void
.end method
