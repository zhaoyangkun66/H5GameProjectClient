.class public Lorg/games/app/MainActivity$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L䆀/உ/㚬/உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/games/app/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Lorg/games/app/MainActivity;


# direct methods
.method public constructor <init>(Lorg/games/app/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/games/app/MainActivity$䂻;->உ:Lorg/games/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/games/app/MainActivity$䂻;->உ:Lorg/games/app/MainActivity;

    new-instance v1, Lorg/games/app/MainActivity$䂻$உ;

    invoke-direct {v1, p0, p1, p2}, Lorg/games/app/MainActivity$䂻$உ;-><init>(Lorg/games/app/MainActivity$䂻;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
