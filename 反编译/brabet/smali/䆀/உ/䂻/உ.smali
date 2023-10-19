.class public L䆀/உ/䂻/உ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public உ:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic உ(L䆀/உ/䂻/உ;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, L䆀/உ/䂻/உ;->உ:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public 䂻(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, L䆀/உ/䂻/உ;->உ:Landroid/os/Handler;

    invoke-static {}, L䆀/உ/䂻/䂻;->䂻()L䆀/உ/䂻/䂻;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v2}, L䆀/உ/䂻/䂻;->㚬(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, L䆀/உ/㚬/㚬;->㚬()L䆀/உ/㚬/㚬;

    move-result-object v0

    new-instance v1, L䆀/உ/䂻/உ$உ;

    invoke-direct {v1, p0}, L䆀/உ/䂻/உ$உ;-><init>(L䆀/உ/䂻/உ;)V

    const-string v2, "adjustlogEvent"

    invoke-virtual {v0, v2, v1}, L䆀/உ/㚬/㚬;->ḓ(Ljava/lang/String;L䆀/உ/㚬/䂻;)V

    invoke-static {}, L䆀/உ/㚬/㚬;->㚬()L䆀/உ/㚬/㚬;

    move-result-object v0

    new-instance v1, L䆀/உ/䂻/உ$䂻;

    invoke-direct {v1, p0}, L䆀/உ/䂻/உ$䂻;-><init>(L䆀/உ/䂻/உ;)V

    const-string v2, "getAdJustKey"

    invoke-virtual {v0, v2, v1}, L䆀/உ/㚬/㚬;->ḓ(Ljava/lang/String;L䆀/உ/㚬/䂻;)V

    invoke-static {}, L䆀/உ/㚬/㚬;->㚬()L䆀/உ/㚬/㚬;

    move-result-object v0

    new-instance v1, L䆀/உ/䂻/உ$㚬;

    invoke-direct {v1, p0, p1}, L䆀/உ/䂻/உ$㚬;-><init>(L䆀/உ/䂻/உ;Landroid/content/Context;)V

    const-string p1, "getAll_preinstallKey"

    invoke-virtual {v0, p1, v1}, L䆀/உ/㚬/㚬;->ḓ(Ljava/lang/String;L䆀/உ/㚬/䂻;)V

    return-void
.end method
