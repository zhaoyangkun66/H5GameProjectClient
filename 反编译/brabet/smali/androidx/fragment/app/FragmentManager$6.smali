.class public Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/䆀;


# instance fields
.field public final synthetic உ:Ljava/lang/String;

.field public final synthetic 㚬:L㚬/ἥ/ḓ;

.field public final synthetic 㺴:L㚬/㧦/㺴/ἥ;

.field public final synthetic 䂻:L㚬/㧦/㺴/㞘;


# virtual methods
.method public 㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 2

    sget-object p1, L㚬/ἥ/ḓ$䂻;->ON_START:L㚬/ἥ/ḓ$䂻;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->㺴:L㚬/㧦/㺴/ἥ;

    invoke-static {p1}, L㚬/㧦/㺴/ἥ;->உ(L㚬/㧦/㺴/ἥ;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$6;->உ:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$6;->䂻:L㚬/㧦/㺴/㞘;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager$6;->உ:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, L㚬/㧦/㺴/㞘;->உ(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->㺴:L㚬/㧦/㺴/ἥ;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$6;->உ:Ljava/lang/String;

    invoke-virtual {p1, v0}, L㚬/㧦/㺴/ἥ;->㞘(Ljava/lang/String;)V

    :cond_0
    sget-object p1, L㚬/ἥ/ḓ$䂻;->ON_DESTROY:L㚬/ἥ/ḓ$䂻;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->㚬:L㚬/ἥ/ḓ;

    invoke-virtual {p1, p0}, L㚬/ἥ/ḓ;->㚬(L㚬/ἥ/ᆻ;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->㺴:L㚬/㧦/㺴/ἥ;

    invoke-static {p1}, L㚬/㧦/㺴/ἥ;->䂻(L㚬/㧦/㺴/ἥ;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager$6;->உ:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
