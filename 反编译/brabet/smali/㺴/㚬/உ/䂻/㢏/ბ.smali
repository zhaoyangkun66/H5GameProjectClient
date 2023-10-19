.class public abstract L㺴/㚬/உ/䂻/㢏/ბ;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# instance fields
.field public final 䂻:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u14ed<",
            "TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/ბ;->䂻:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public உ(L㺴/㚬/உ/䂻/㢏/ᓭ;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u14ed<",
            "TS;>;)Z"
        }
    .end annotation

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ბ;->䂻:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public 䂻()V
    .locals 1

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/ბ;->䂻:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method
