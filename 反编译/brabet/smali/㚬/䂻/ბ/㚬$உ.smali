.class public L㚬/䂻/ბ/㚬$உ;
.super L㚬/䂻/ᓭ/ಫ/㹖;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u0b89"
.end annotation


# instance fields
.field public final synthetic ἥ:L㚬/䂻/ბ/㚬;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㚬;Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/㞘;Landroid/view/View;)V
    .locals 6

    iput-object p1, p0, L㚬/䂻/ბ/㚬$உ;->ἥ:L㚬/䂻/ბ/㚬;

    sget v5, L㚬/䂻/உ;->㹖:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, L㚬/䂻/ᓭ/ಫ/㹖;-><init>(Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/View;ZI)V

    invoke-virtual {p3}, L㚬/䂻/ᓭ/ಫ/㞘;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, L㚬/䂻/ᓭ/ಫ/ㄏ;

    invoke-virtual {p2}, L㚬/䂻/ᓭ/ಫ/ㄏ;->㹖()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, L㚬/䂻/ბ/㚬;->ಫ:L㚬/䂻/ბ/㚬$㺴;

    if-nez p2, :cond_0

    invoke-static {p1}, L㚬/䂻/ბ/㚬;->ḙ(L㚬/䂻/ბ/㚬;)L㚬/䂻/ᓭ/ಫ/ཇ;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    :cond_0
    invoke-virtual {p0, p2}, L㚬/䂻/ᓭ/ಫ/㹖;->䆀(Landroid/view/View;)V

    :cond_1
    iget-object p1, p1, L㚬/䂻/ბ/㚬;->ᾦ:L㚬/䂻/ბ/㚬$䆀;

    invoke-virtual {p0, p1}, L㚬/䂻/ᓭ/ಫ/㹖;->ಫ(L㚬/䂻/ᓭ/ಫ/ἥ$உ;)V

    return-void
.end method


# virtual methods
.method public ḓ()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㚬$உ;->ἥ:L㚬/䂻/ბ/㚬;

    const/4 v1, 0x0

    iput-object v1, v0, L㚬/䂻/ბ/㚬;->ㄬ:L㚬/䂻/ბ/㚬$உ;

    const/4 v1, 0x0

    iput v1, v0, L㚬/䂻/ბ/㚬;->ڈ:I

    invoke-super {p0}, L㚬/䂻/ᓭ/ಫ/㹖;->ḓ()V

    return-void
.end method
