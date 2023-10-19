.class public L㚬/ㄏ/உ/உ$䂻;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ㄏ/உ/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u40bb"
.end annotation


# instance fields
.field public final synthetic உ:L㚬/ㄏ/உ/உ;


# direct methods
.method public constructor <init>(L㚬/ㄏ/உ/உ;)V
    .locals 0

    iput-object p1, p0, L㚬/ㄏ/உ/உ$䂻;->உ:L㚬/ㄏ/உ/உ;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, L㚬/ㄏ/உ/உ$䂻;->உ:L㚬/ㄏ/உ/உ;

    const/4 v1, 0x1

    iput-boolean v1, v0, L㚬/ㄏ/உ/உ;->䂻:Z

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, L㚬/ㄏ/உ/உ$䂻;->உ:L㚬/ㄏ/உ/உ;

    const/4 v1, 0x0

    iput-boolean v1, v0, L㚬/ㄏ/உ/உ;->䂻:Z

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
