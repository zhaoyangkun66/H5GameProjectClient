.class public L㚬/䂻/ᓭ/ಫ/㺴$㺴;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ᓭ/ಫ/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u3eb4"
.end annotation


# instance fields
.field public final உ:L㚬/䂻/ბ/㖆;

.field public final 㚬:I

.field public final 䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㖆;L㚬/䂻/ᓭ/ಫ/ᆻ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ:L㚬/䂻/ბ/㖆;

    iput-object p2, p0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->䂻:L㚬/䂻/ᓭ/ಫ/ᆻ;

    iput p3, p0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->㚬:I

    return-void
.end method


# virtual methods
.method public உ()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㺴$㺴;->உ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->㹖()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
