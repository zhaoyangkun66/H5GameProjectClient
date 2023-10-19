.class public L䂻/உ/䂻/㚬/䂻$䂻;
.super L䂻/உ/䂻/㚬/உ$உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L䂻/உ/䂻/㚬/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u40bb"
.end annotation


# instance fields
.field public final synthetic உ:L䂻/உ/䂻/㚬/䂻;


# direct methods
.method public constructor <init>(L䂻/உ/䂻/㚬/䂻;)V
    .locals 0

    iput-object p1, p0, L䂻/உ/䂻/㚬/䂻$䂻;->உ:L䂻/உ/䂻/㚬/䂻;

    invoke-direct {p0}, L䂻/உ/䂻/㚬/உ$உ;-><init>()V

    return-void
.end method


# virtual methods
.method public ᰘ(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, L䂻/உ/䂻/㚬/䂻$䂻;->உ:L䂻/உ/䂻/㚬/䂻;

    iget-object v1, v0, L䂻/உ/䂻/㚬/䂻;->㚬:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, L䂻/உ/䂻/㚬/䂻$㚬;

    invoke-direct {v2, v0, p1, p2}, L䂻/உ/䂻/㚬/䂻$㚬;-><init>(L䂻/உ/䂻/㚬/䂻;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, L䂻/உ/䂻/㚬/䂻;->ಫ(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
