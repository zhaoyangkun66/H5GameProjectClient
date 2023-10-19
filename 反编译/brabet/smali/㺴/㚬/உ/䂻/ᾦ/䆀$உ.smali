.class public L㺴/㚬/உ/䂻/ᾦ/䆀$உ;
.super L㺴/㚬/உ/䂻/ש/䆀;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/ᾦ/䆀;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㺴/㚬/உ/䂻/ᾦ/䆀;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ᾦ/䆀;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀$உ;->உ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-direct {p0}, L㺴/㚬/உ/䂻/ש/䆀;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(I)V
    .locals 1

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀$உ;->உ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    const/4 v0, 0x1

    invoke-static {p1, v0}, L㺴/㚬/உ/䂻/ᾦ/䆀;->உ(L㺴/㚬/உ/䂻/ᾦ/䆀;Z)Z

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀$உ;->உ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-static {p1}, L㺴/㚬/உ/䂻/ᾦ/䆀;->䂻(L㺴/㚬/உ/䂻/ᾦ/䆀;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;

    if-eqz p1, :cond_0

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;->உ()V

    :cond_0
    return-void
.end method

.method public 䂻(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀$உ;->உ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    const/4 p2, 0x1

    invoke-static {p1, p2}, L㺴/㚬/உ/䂻/ᾦ/䆀;->உ(L㺴/㚬/உ/䂻/ᾦ/䆀;Z)Z

    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀$உ;->உ:L㺴/㚬/உ/䂻/ᾦ/䆀;

    invoke-static {p1}, L㺴/㚬/உ/䂻/ᾦ/䆀;->䂻(L㺴/㚬/உ/䂻/ᾦ/䆀;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;

    if-eqz p1, :cond_1

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;->உ()V

    :cond_1
    return-void
.end method
