.class public Lcom/google/common/collect/ImmutableRangeMap;
.super Ljava/lang/Object;
.source "ImmutableRangeMap.java"

# interfaces
.implements Lcom/google/common/collect/RangeMap;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "NavigableMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableRangeMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/common/collect/ImmutableRangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeMap<",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ranges:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field private final values:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableRangeMap;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeMap;->EMPTY:Lcom/google/common/collect/ImmutableRangeMap;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TK;>;>;",
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableRangeMap;->values:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ImmutableRangeMap;)Lcom/google/common/collect/ImmutableList;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/ImmutableRangeMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableRangeMap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/RangeMap;)Lcom/google/common/collect/ImmutableRangeMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/RangeMap<",
            "TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/ImmutableRangeMap;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/ImmutableRangeMap;

    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/common/collect/ImmutableRangeMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/common/collect/ImmutableRangeMap;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v3
.end method

.method public static of()Lcom/google/common/collect/ImmutableRangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/ImmutableRangeMap;->EMPTY:Lcom/google/common/collect/ImmutableRangeMap;

    return-object v0
.end method

.method public static of(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;)",
            "Lcom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableRangeMap;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method


# virtual methods
.method public asMapOfRanges()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    sget-object v2, Lcom/google/common/collect/Range;->RANGE_LEX_ORDERING:Lcom/google/common/collect/Ordering;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedMap;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->values:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/RegularImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public bridge synthetic asMapOfRanges()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/RangeMap;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/RangeMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    :cond_1
    return-object v1
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    nop

    :cond_1
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/RangeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public span()Lcom/google/common/collect/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    iget-object v2, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v3, v1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v2, v3}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;)",
            "Lcom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableRangeMap;->of()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/Range;->upperBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/google/common/collect/ImmutableRangeMap;->of()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v2

    return-object v2

    :cond_2
    move v2, v0

    sub-int v3, v1, v0

    new-instance v6, Lcom/google/common/collect/ImmutableRangeMap$1;

    invoke-direct {v6, p0, v3, v2, p1}, Lcom/google/common/collect/ImmutableRangeMap$1;-><init>(Lcom/google/common/collect/ImmutableRangeMap;IILcom/google/common/collect/Range;)V

    move-object v9, p0

    new-instance v10, Lcom/google/common/collect/ImmutableRangeMap$2;

    iget-object v4, p0, Lcom/google/common/collect/ImmutableRangeMap;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v0, v1}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    move-object v4, v10

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/common/collect/ImmutableRangeMap$2;-><init>(Lcom/google/common/collect/ImmutableRangeMap;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/Range;Lcom/google/common/collect/ImmutableRangeMap;)V

    return-object v10

    :cond_3
    :goto_0
    return-object p0
.end method

.method public bridge synthetic subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeMap;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeMap;->subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
