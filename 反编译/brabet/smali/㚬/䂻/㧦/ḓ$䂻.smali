.class public L㚬/䂻/㧦/ḓ$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/㧦/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/㧦/ḓ;


# direct methods
.method public constructor <init>(L㚬/䂻/㧦/ḓ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/㧦/ḓ$䂻;->䂻:L㚬/䂻/㧦/ḓ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, L㚬/䂻/㧦/ḓ$䂻;->䂻:L㚬/䂻/㧦/ḓ;

    iget v1, v0, L㚬/䂻/㧦/ḓ;->ᣝ:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, L㚬/䂻/㧦/ḓ;->ⵦ(I)V

    :cond_0
    iget-object v0, p0, L㚬/䂻/㧦/ḓ$䂻;->䂻:L㚬/䂻/㧦/ḓ;

    iget v1, v0, L㚬/䂻/㧦/ḓ;->ᣝ:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, L㚬/䂻/㧦/ḓ;->ⵦ(I)V

    :cond_1
    iget-object v0, p0, L㚬/䂻/㧦/ḓ$䂻;->䂻:L㚬/䂻/㧦/ḓ;

    iput-boolean v2, v0, L㚬/䂻/㧦/ḓ;->㟘:Z

    iput v2, v0, L㚬/䂻/㧦/ḓ;->ᣝ:I

    return-void
.end method
