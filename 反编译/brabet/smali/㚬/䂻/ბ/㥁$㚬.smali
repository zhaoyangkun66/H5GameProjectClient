.class public L㚬/䂻/ბ/㥁$㚬;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/㥁;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u36ac"
.end annotation


# instance fields
.field public final synthetic உ:L㚬/䂻/ბ/㥁;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㥁;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/㥁$㚬;->உ:L㚬/䂻/ბ/㥁;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㥁$㚬;->உ:L㚬/䂻/ბ/㥁;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->䂻()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㥁$㚬;->உ:L㚬/䂻/ბ/㥁;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->ᆻ()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ბ/㥁$㚬;->உ:L㚬/䂻/ბ/㥁;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->dismiss()V

    return-void
.end method
