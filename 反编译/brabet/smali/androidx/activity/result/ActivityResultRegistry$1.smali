.class public Landroidx/activity/result/ActivityResultRegistry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/䆀;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/result/ActivityResultRegistry;->ಫ(Ljava/lang/String;L㚬/ἥ/ℓ;L㚬/உ/ḓ/䆀/உ;L㚬/உ/ḓ/䂻;)L㚬/உ/ḓ/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Ljava/lang/String;

.field public final synthetic 㚬:L㚬/உ/ḓ/䆀/உ;

.field public final synthetic 㺴:Landroidx/activity/result/ActivityResultRegistry;

.field public final synthetic 䂻:L㚬/உ/ḓ/䂻;


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;L㚬/உ/ḓ/䂻;L㚬/உ/ḓ/䆀/உ;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->㺴:Landroidx/activity/result/ActivityResultRegistry;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->உ:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->䂻:L㚬/உ/ḓ/䂻;

    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$1;->㚬:L㚬/உ/ḓ/䆀/உ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public 㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 3

    sget-object p1, L㚬/ἥ/ḓ$䂻;->ON_START:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->㺴:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->ḓ:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->உ:Ljava/lang/String;

    new-instance v0, Landroidx/activity/result/ActivityResultRegistry$㚬;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->䂻:L㚬/உ/ḓ/䂻;

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->㚬:L㚬/உ/ḓ/䆀/உ;

    invoke-direct {v0, v1, v2}, Landroidx/activity/result/ActivityResultRegistry$㚬;-><init>(L㚬/உ/ḓ/䂻;L㚬/உ/ḓ/䆀/உ;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->㺴:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->䆀:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->உ:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->㺴:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->䆀:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->உ:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->㺴:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p2, p2, Landroidx/activity/result/ActivityResultRegistry;->䆀:Ljava/util/Map;

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->உ:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->䂻:L㚬/உ/ḓ/䂻;

    invoke-interface {p2, p1}, L㚬/உ/ḓ/䂻;->உ(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->㺴:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->ᆻ:Landroid/os/Bundle;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->உ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, L㚬/உ/ḓ/உ;

    if-eqz p1, :cond_3

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->㺴:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p2, p2, Landroidx/activity/result/ActivityResultRegistry;->ᆻ:Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->உ:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->䂻:L㚬/உ/ḓ/䂻;

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->㚬:L㚬/உ/ḓ/䆀/உ;

    invoke-virtual {p1}, L㚬/உ/ḓ/உ;->㧦()I

    move-result v1

    invoke-virtual {p1}, L㚬/உ/ḓ/உ;->ಫ()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, L㚬/உ/ḓ/䆀/உ;->parseResult(ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, L㚬/உ/ḓ/䂻;->உ(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, L㚬/ἥ/ḓ$䂻;->ON_STOP:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->㺴:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->ḓ:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->உ:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object p1, L㚬/ἥ/ḓ$䂻;->ON_DESTROY:L㚬/ἥ/ḓ$䂻;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->㺴:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->உ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultRegistry;->㹖(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
