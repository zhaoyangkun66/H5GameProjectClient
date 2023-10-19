.class public L㺴/㚬/உ/䂻/ᾦ/䆀;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;
    }
.end annotation


# instance fields
.field public final உ:Landroid/text/TextPaint;

.field public ḓ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u1fa6/\u4180$\u40bb;",
            ">;"
        }
    .end annotation
.end field

.field public 㚬:F

.field public 㺴:Z

.field public final 䂻:L㺴/㚬/உ/䂻/ש/䆀;

.field public 䆀:L㺴/㚬/உ/䂻/ש/㺴;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->உ:Landroid/text/TextPaint;

    new-instance v0, L㺴/㚬/உ/䂻/ᾦ/䆀$உ;

    invoke-direct {v0, p0}, L㺴/㚬/உ/䂻/ᾦ/䆀$உ;-><init>(L㺴/㚬/உ/䂻/ᾦ/䆀;)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->䂻:L㺴/㚬/உ/䂻/ש/䆀;

    iput-boolean v1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->㺴:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->ḓ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᾦ/䆀;->ᆻ(L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;)V

    return-void
.end method

.method public static synthetic உ(L㺴/㚬/உ/䂻/ᾦ/䆀;Z)Z
    .locals 0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->㺴:Z

    return p1
.end method

.method public static synthetic 䂻(L㺴/㚬/உ/䂻/ᾦ/䆀;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->ḓ:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public ಫ(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->䆀:L㺴/㚬/உ/䂻/ש/㺴;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->உ:Landroid/text/TextPaint;

    iget-object v2, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->䂻:L㺴/㚬/உ/䂻/ש/䆀;

    invoke-virtual {v0, p1, v1, v2}, L㺴/㚬/உ/䂻/ש/㺴;->ㄏ(Landroid/content/Context;Landroid/text/TextPaint;L㺴/㚬/உ/䂻/ש/䆀;)V

    return-void
.end method

.method public ᆻ(L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->ḓ:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public ḓ()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->உ:Landroid/text/TextPaint;

    return-object v0
.end method

.method public ℓ(L㺴/㚬/உ/䂻/ש/㺴;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->䆀:L㺴/㚬/உ/䂻/ש/㺴;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->䆀:L㺴/㚬/உ/䂻/ש/㺴;

    if-eqz p1, :cond_1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->உ:Landroid/text/TextPaint;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->䂻:L㺴/㚬/உ/䂻/ש/䆀;

    invoke-virtual {p1, p2, v0, v1}, L㺴/㚬/உ/䂻/ש/㺴;->ಫ(Landroid/content/Context;Landroid/text/TextPaint;L㺴/㚬/உ/䂻/ש/䆀;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->ḓ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;

    if-eqz v0, :cond_0

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->உ:Landroid/text/TextPaint;

    invoke-interface {v0}, L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;->getState()[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->உ:Landroid/text/TextPaint;

    iget-object v1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->䂻:L㺴/㚬/உ/䂻/ש/䆀;

    invoke-virtual {p1, p2, v0, v1}, L㺴/㚬/உ/䂻/ש/㺴;->ㄏ(Landroid/content/Context;Landroid/text/TextPaint;L㺴/㚬/உ/䂻/ש/䆀;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->㺴:Z

    :cond_1
    iget-object p1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->ḓ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;

    if-eqz p1, :cond_2

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;->உ()V

    invoke-interface {p1}, L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;->getState()[I

    move-result-object p2

    invoke-interface {p1, p2}, L㺴/㚬/உ/䂻/ᾦ/䆀$䂻;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public ㄏ(Z)V
    .locals 0

    iput-boolean p1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->㺴:Z

    return-void
.end method

.method public final 㚬(Ljava/lang/CharSequence;)F
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->உ:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    return p1
.end method

.method public 㺴()L㺴/㚬/உ/䂻/ש/㺴;
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->䆀:L㺴/㚬/உ/䂻/ש/㺴;

    return-object v0
.end method

.method public 䆀(Ljava/lang/String;)F
    .locals 1

    iget-boolean v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->㺴:Z

    if-nez v0, :cond_0

    iget p1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->㚬:F

    return p1

    :cond_0
    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/ᾦ/䆀;->㚬(Ljava/lang/CharSequence;)F

    move-result p1

    iput p1, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->㚬:F

    const/4 v0, 0x0

    iput-boolean v0, p0, L㺴/㚬/உ/䂻/ᾦ/䆀;->㺴:Z

    return p1
.end method
