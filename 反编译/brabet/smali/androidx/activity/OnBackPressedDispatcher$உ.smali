.class public Landroidx/activity/OnBackPressedDispatcher$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/உ/உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u0b89"
.end annotation


# instance fields
.field public final உ:L㚬/உ/䂻;

.field public final synthetic 䂻:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedDispatcher;L㚬/உ/䂻;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$உ;->䂻:Landroidx/activity/OnBackPressedDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$உ;->உ:L㚬/உ/䂻;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$உ;->䂻:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v0, v0, Landroidx/activity/OnBackPressedDispatcher;->䂻:Ljava/util/ArrayDeque;

    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher$உ;->உ:L㚬/உ/䂻;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$உ;->உ:L㚬/உ/䂻;

    invoke-virtual {v0, p0}, L㚬/உ/䂻;->ḓ(L㚬/உ/உ;)V

    return-void
.end method
