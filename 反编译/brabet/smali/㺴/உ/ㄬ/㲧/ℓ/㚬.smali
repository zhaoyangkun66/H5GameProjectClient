.class public final synthetic L㺴/உ/ㄬ/㲧/ℓ/㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic உ:L㺴/உ/ㄬ/㲧/ℓ/㚬;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L㺴/உ/ㄬ/㲧/ℓ/㚬;

    invoke-direct {v0}, L㺴/உ/ㄬ/㲧/ℓ/㚬;-><init>()V

    sput-object v0, L㺴/உ/ㄬ/㲧/ℓ/㚬;->உ:L㺴/உ/ㄬ/㲧/ℓ/㚬;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/facebook/internal/instrument/InstrumentData;

    check-cast p2, Lcom/facebook/internal/instrument/InstrumentData;

    invoke-static {p1, p2}, Lcom/facebook/internal/instrument/anrreport/ANRHandler;->䂻(Lcom/facebook/internal/instrument/InstrumentData;Lcom/facebook/internal/instrument/InstrumentData;)I

    move-result p1

    return p1
.end method
