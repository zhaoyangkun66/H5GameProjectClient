.class public abstract L㚬/㺴/䂻/㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCustomTabsServiceConnected(Landroid/content/ComponentName;L㚬/㺴/䂻/䂻;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    new-instance v0, L㚬/㺴/䂻/㺴$உ;

    invoke-static {p2}, L䂻/உ/உ/䂻$உ;->ർ(Landroid/os/IBinder;)L䂻/உ/உ/䂻;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, L㚬/㺴/䂻/㺴$உ;-><init>(L㚬/㺴/䂻/㺴;L䂻/உ/உ/䂻;Landroid/content/ComponentName;)V

    invoke-virtual {p0, p1, v0}, L㚬/㺴/䂻/㺴;->onCustomTabsServiceConnected(Landroid/content/ComponentName;L㚬/㺴/䂻/䂻;)V

    return-void
.end method
