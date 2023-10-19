.class public final L㚬/㺴/䂻/䂻$உ;
.super L㚬/㺴/䂻/㺴;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㺴/䂻/䂻;->䂻(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, L㚬/㺴/䂻/䂻$உ;->உ:Landroid/content/Context;

    invoke-direct {p0}, L㚬/㺴/䂻/㺴;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;L㚬/㺴/䂻/䂻;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, L㚬/㺴/䂻/䂻;->㺴(J)Z

    iget-object p1, p0, L㚬/㺴/䂻/䂻$உ;->உ:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
