.class public L㚬/ℓ/ἥ/㭲$㚬;
.super L㚬/ℓ/ἥ/㭲$䆀;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/ℓ/ἥ/㭲;->ᭊ()L㚬/ℓ/ἥ/㭲$䆀;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u36ac/\u2113/\u1f25/\u3b72$\u4180<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, L㚬/ℓ/ἥ/㭲$䆀;-><init>(ILjava/lang/Class;II)V

    return-void
.end method


# virtual methods
.method public ಫ(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic ḓ(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, L㚬/ℓ/ἥ/㭲$㚬;->ಫ(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic ℓ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, L㚬/ℓ/ἥ/㭲$㚬;->㧦(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public ㄏ(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public 㧦(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic 㺴(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ℓ/ἥ/㭲$㚬;->ㄏ(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
