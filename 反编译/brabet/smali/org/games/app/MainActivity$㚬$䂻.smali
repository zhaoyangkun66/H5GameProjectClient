.class public Lorg/games/app/MainActivity$㚬$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/games/app/MainActivity$㚬;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:Landroid/webkit/SslErrorHandler;


# direct methods
.method public constructor <init>(Lorg/games/app/MainActivity$㚬;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    iput-object p2, p0, Lorg/games/app/MainActivity$㚬$䂻;->䂻:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lorg/games/app/MainActivity$㚬$䂻;->䂻:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method
