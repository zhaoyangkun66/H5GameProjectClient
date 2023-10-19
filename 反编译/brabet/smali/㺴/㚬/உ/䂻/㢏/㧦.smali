.class public final L㺴/㚬/உ/䂻/㢏/㧦;
.super L㺴/㚬/உ/䂻/㢏/ბ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u10d1<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public 㚬:L㺴/㚬/உ/䂻/㢏/㺴;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3eb4<",
            "TS;>;"
        }
    .end annotation
.end field

.field public 㺴:L㺴/㚬/உ/䂻/㢏/உ;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L㺴/㚬/உ/䂻/㢏/ბ;-><init>()V

    return-void
.end method

.method public static 㚬(L㺴/㚬/உ/䂻/㢏/㺴;L㺴/㚬/உ/䂻/㢏/உ;)L㺴/㚬/உ/䂻/㢏/㧦;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3eb4<",
            "TT;>;",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u0b89;",
            ")",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u39e6<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, L㺴/㚬/உ/䂻/㢏/㧦;

    invoke-direct {v0}, L㺴/㚬/உ/䂻/㢏/㧦;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATE_SELECTOR_KEY"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, L㺴/㚬/உ/䂻/㢏/㺴;

    iput-object v0, p0, L㺴/㚬/உ/䂻/㢏/㧦;->㚬:L㺴/㚬/உ/䂻/㢏/㺴;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, L㺴/㚬/உ/䂻/㢏/உ;

    iput-object p1, p0, L㺴/㚬/உ/䂻/㢏/㧦;->㺴:L㺴/㚬/உ/䂻/㢏/உ;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㧦;->㚬:L㺴/㚬/உ/䂻/㢏/㺴;

    iget-object v4, p0, L㺴/㚬/உ/䂻/㢏/㧦;->㺴:L㺴/㚬/உ/䂻/㢏/உ;

    new-instance v5, L㺴/㚬/உ/䂻/㢏/㧦$உ;

    invoke-direct {v5, p0}, L㺴/㚬/உ/䂻/㢏/㧦$உ;-><init>(L㺴/㚬/உ/䂻/㢏/㧦;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, L㺴/㚬/உ/䂻/㢏/㺴;->ℓ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;L㺴/㚬/உ/䂻/㢏/உ;L㺴/㚬/உ/䂻/㢏/ᓭ;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㧦;->㚬:L㺴/㚬/உ/䂻/㢏/㺴;

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㢏/㧦;->㺴:L㺴/㚬/உ/䂻/㢏/உ;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
