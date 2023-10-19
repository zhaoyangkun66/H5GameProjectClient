.class public Lorg/games/app/MainActivity$䂻$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/games/app/MainActivity$䂻;->உ(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:Ljava/lang/String;

.field public final synthetic 㺴:Lorg/games/app/MainActivity$䂻;

.field public final synthetic 䂻:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/games/app/MainActivity$䂻;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/games/app/MainActivity$䂻$உ;->㺴:Lorg/games/app/MainActivity$䂻;

    iput-object p2, p0, Lorg/games/app/MainActivity$䂻$உ;->䂻:Ljava/lang/String;

    iput-object p3, p0, Lorg/games/app/MainActivity$䂻$உ;->㚬:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "CwAXABICEwgRFVsCAk8MBk8PABUIFwQ+Ag0AEhJPAgANDTICEwgRFUlGRBJGTUZEEkZI"

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/games/app/MainActivity$䂻$உ;->䂻:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/games/app/MainActivity$䂻$உ;->㚬:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/games/app/MainActivity$䂻$உ;->㺴:Lorg/games/app/MainActivity$䂻;

    iget-object v2, v2, Lorg/games/app/MainActivity$䂻;->உ:Lorg/games/app/MainActivity;

    invoke-static {v2}, Lorg/games/app/MainActivity;->உ(Lorg/games/app/MainActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "CwAXABICEwgRFVsWCA8FDhZPAA8FEw4IBU8CAA0NMgITCBEVSUZEEkZNRkQSRkg="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/games/app/MainActivity$䂻$உ;->䂻:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/games/app/MainActivity$䂻$உ;->㚬:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/games/app/MainActivity$䂻$உ;->㺴:Lorg/games/app/MainActivity$䂻;

    iget-object v1, v1, Lorg/games/app/MainActivity$䂻;->உ:Lorg/games/app/MainActivity;

    invoke-static {v1}, Lorg/games/app/MainActivity;->உ(Lorg/games/app/MainActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
