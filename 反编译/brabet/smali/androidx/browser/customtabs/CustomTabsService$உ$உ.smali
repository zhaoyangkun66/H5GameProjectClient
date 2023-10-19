.class public Landroidx/browser/customtabs/CustomTabsService$உ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsService$உ;->ཇ(L䂻/உ/உ/உ;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/㺴/䂻/䆀;

.field public final synthetic 䂻:Landroidx/browser/customtabs/CustomTabsService$உ;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsService$உ;L㚬/㺴/䂻/䆀;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$உ$உ;->䂻:Landroidx/browser/customtabs/CustomTabsService$உ;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsService$உ$உ;->உ:L㚬/㺴/䂻/䆀;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$உ$உ;->䂻:Landroidx/browser/customtabs/CustomTabsService$உ;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsService$உ;->உ:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsService$உ$உ;->உ:L㚬/㺴/䂻/䆀;

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsService;->உ(L㚬/㺴/䂻/䆀;)Z

    return-void
.end method
