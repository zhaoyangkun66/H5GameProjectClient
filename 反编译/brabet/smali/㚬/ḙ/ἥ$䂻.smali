.class public L㚬/ḙ/ἥ$䂻;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/ḙ/ἥ;->ⵦ(Landroid/animation/Animator;L㚬/䆀/உ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/䆀/உ;

.field public final synthetic 䂻:L㚬/ḙ/ἥ;


# direct methods
.method public constructor <init>(L㚬/ḙ/ἥ;L㚬/䆀/உ;)V
    .locals 0

    iput-object p1, p0, L㚬/ḙ/ἥ$䂻;->䂻:L㚬/ḙ/ἥ;

    iput-object p2, p0, L㚬/ḙ/ἥ$䂻;->உ:L㚬/䆀/உ;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, L㚬/ḙ/ἥ$䂻;->உ:L㚬/䆀/உ;

    invoke-virtual {v0, p1}, L㚬/䆀/ᆻ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, L㚬/ḙ/ἥ$䂻;->䂻:L㚬/ḙ/ἥ;

    iget-object v0, v0, L㚬/ḙ/ἥ;->㲧:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, L㚬/ḙ/ἥ$䂻;->䂻:L㚬/ḙ/ἥ;

    iget-object v0, v0, L㚬/ḙ/ἥ;->㲧:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
